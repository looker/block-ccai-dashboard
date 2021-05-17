view: next_sentences {
  derived_table: {
    sql: SELECT
        CONCAT(sentences.participantId, '_',sentences.createTimeNanos) as id,
        LEAD(sentences.participantRole)
        OVER (PARTITION BY conversationName ORDER BY sentences.createTimeNanos) as next_participant_role,
        LEAD(sentences.sentence)
        OVER (PARTITION BY conversationName ORDER BY sentences.createTimeNanos) as next_sentence_text,
      FROM aa_feedback, UNNEST(sentences) as sentences
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: next_participant_role {
    type: string
    sql: ${TABLE}.next_participant_role ;;
  }

  dimension: next_sentence_text {
    type: string
    sql:  ${TABLE}.next_sentence_text;;
  }

  set: detail {
    fields: [id, next_participant_role, next_sentence_text]
  }
}
