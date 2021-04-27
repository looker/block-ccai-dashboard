view: next_sentences {
  derived_table: {
    sql: SELECT
        CONCAT(sentences.participantId, '_',sentences.createTimeNanos) as id,
        LEAD(sentences.participantRole)
        OVER (PARTITION BY conversationName ORDER BY sentences.createTimeNanos) as next_participant_role
      FROM aa_feedback, UNNEST(sentences) as sentences
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: next_participant_role {
    type: string
    sql: ${TABLE}.next_participant_role ;;
  }

  set: detail {
    fields: [id, next_participant_role]
  }
}
