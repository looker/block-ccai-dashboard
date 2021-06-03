connection: "@{CONNECTION}"

# include all the views
include: "/views/**/*.view"

datagroup: gc_ccai_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gc_ccai_default_datagroup

explore: aa_feedback {
  join: aa_feedback__words {
    view_label: "Aa Feedback: Words"
    sql: LEFT JOIN UNNEST(${aa_feedback.words}) as aa_feedback__words ;;
    relationship: one_to_many
  }

  join: aa_feedback__issues {
    view_label: "Aa Feedback: Issues"
    sql: LEFT JOIN UNNEST(${aa_feedback.issues}) as aa_feedback__issues ;;
    relationship: one_to_many
  }

  join: aa_feedback__entities {
    view_label: "Aa Feedback: Entities"
    sql: LEFT JOIN UNNEST(${aa_feedback.entities}) as aa_feedback__entities ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences {
    view_label: "Aa Feedback: Sentences"
    sql: LEFT JOIN UNNEST(${aa_feedback.sentences}) as aa_feedback__sentences ;;
    relationship: one_to_many
  }

  join: next_sentences {
    view_label: "Aa Feedback: Next Sentence"
    sql_on: ${aa_feedback__sentences.id} = ${next_sentences.id} ;;
    relationship: one_to_one
  }

  join: aa_feedback__sentences__annotations {
    view_label: "Aa Feedback: Sentences Annotations"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.annotations}) as aa_feedback__sentences__annotations ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences__intent_match_data {
    view_label: "Aa Feedback: Sentences Intentmatchdata"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.intent_match_data}) as aa_feedback__sentences__intent_match_data ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences__phrase_match_data {
    view_label: "Aa Feedback: Sentences Phrasematchdata"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.phrase_match_data}) as aa_feedback__sentences__phrase_match_data ;;
    relationship: one_to_many
  }
}
