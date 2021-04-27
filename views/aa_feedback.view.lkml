view: aa_feedback {
  sql_table_name: `ccai_looker_bq.aa_feedback`;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agentId ;;
  }

  dimension: agent_sentiment_magnitude {
    type: number
    sql: ${TABLE}.agentSentimentMagnitude ;;
  }

  dimension: agent_sentiment_score {
    type: number
    sql: ${TABLE}.agentSentimentScore ;;
  }

  dimension: agent_speaking_percentage {
    type: number
    sql: ${TABLE}.agentSpeakingPercentage ;;
  }

  dimension: audio_file_uri {
    type: string
    sql: ${TABLE}.audioFileUri ;;
  }

  dimension: client_sentiment_magnitude {
    type: number
    sql: ${TABLE}.clientSentimentMagnitude ;;
  }

  dimension: client_sentiment_score {
    type: number
    sql: ${TABLE}.clientSentimentScore ;;
  }

  dimension: client_speaking_percentage {
    type: number
    sql: ${TABLE}.clientSpeakingPercentage ;;
  }

  dimension: conversation_name {
    type: string
    sql: ${TABLE}.conversationName ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: duration_nanos {
    type: number
    sql: ${TABLE}.durationNanos ;;
  }

  dimension: entities {
    hidden: yes
    sql: ${TABLE}.entities ;;
  }

  dimension: issues {
    hidden: yes
    sql: ${TABLE}.issues ;;
  }

  dimension: load_timestamp_utc {
    type: number
    sql: ${TABLE}.loadTimestampUtc ;;
  }

  dimension: start_timestamp_utc {
    type: number
    sql: ${TABLE}.startTimestampUtc ;;
  }

  # Create time in PST timezone
  dimension_group: create_time_pst {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: EXTRACT(DATE FROM TIMESTAMP_SECONDS(${TABLE}.startTimestampUtc) AT TIME ZONE "America/Los_Angeles");;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: sentences {
    hidden: yes
    sql: ${TABLE}.sentences ;;
  }

  dimension: silence_nanos {
    type: number
    sql: ${TABLE}.silenceNanos ;;
  }

  dimension: silence_percentage {
    type: number
    sql: ${TABLE}.silencePercentage ;;
  }

  dimension: transcript {
    type: string
    sql: ${TABLE}.transcript ;;
  }

  dimension: turn_count {
    type: number
    sql: ${TABLE}.turnCount ;;
  }

  dimension: words {
    hidden: yes
    sql: ${TABLE}.words ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [conversation_name]
  }
}

view: aa_feedback__words {
  dimension: end_offset_nanos {
    type: number
    sql: ${TABLE}.endOffsetNanos ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.languageCode ;;
  }

  dimension: speaker_tag {
    type: number
    sql: ${TABLE}.speakerTag ;;
  }

  dimension: start_offset_nanos {
    type: number
    sql: ${TABLE}.startOffsetNanos ;;
  }

  dimension: word {
    type: string
    sql: ${TABLE}.word ;;
  }
}

view: aa_feedback__issues {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
}

view: aa_feedback__entities {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: salience {
    type: number
    sql: ${TABLE}.salience ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentimentMagnitude ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentimentScore ;;
  }

  dimension: speaker_tag {
    type: number
    sql: ${TABLE}.speakerTag ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: aa_feedback__sentences {
  dimension: annotations {
    hidden: yes
    sql: ${TABLE}.annotations ;;
  }
  # We don't have message id in orignal data so manually created one.
  dimension: id {
    type: string
    sql: CONCAT(${TABLE}.participantId, '_', ${TABLE}.createTimeNanos);;
  }

  dimension: create_time_nanos {
    type: number
    sql: ${TABLE}.createTimeNanos ;;
  }

  dimension: end_offset_nanos {
    type: number
    sql: ${TABLE}.endOffsetNanos ;;
  }

  dimension: is_covered_by_smart_reply_allowlist {
    type: yesno
    sql: ${TABLE}.isCoveredBySmartReplyAllowlist ;;
  }

  dimension: intent_match_data {
    hidden: yes
    sql: ${TABLE}.intentMatchData ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.languageCode ;;
  }

  dimension: obfuscated_external_user_id {
    type: string
    sql: ${TABLE}.obfuscatedExternalUserId ;;
  }

  dimension: participant_id {
    type: string
    sql: ${TABLE}.participantId ;;
  }

  dimension: participant_role {
    type: string
    sql: ${TABLE}.participantRole ;;
  }

  dimension: phrase_match_data {
    hidden: yes
    sql: ${TABLE}.phraseMatchData ;;
  }

  dimension: sentence {
    type: string
    sql: ${TABLE}.sentence ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentimentMagnitude ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentimentScore ;;
  }

  dimension: speaker_tag {
    type: number
    sql: ${TABLE}.speakerTag ;;
  }

  dimension: start_offset_nanos {
    type: number
    sql: ${TABLE}.startOffsetNanos ;;
  }
}

view: aa_feedback__sentences__annotations {
  dimension: clicked {
    type: yesno
    sql: ${TABLE}.clicked ;;
  }

  dimension: correctness_level {
    type: string
    sql: ${TABLE}.correctnessLevel ;;
  }

  dimension: create_time_nanos {
    type: number
    sql: ${TABLE}.createTimeNanos ;;
  }

  dimension: displayed {
    type: yesno
    sql: ${TABLE}.displayed ;;
  }

  dimension: record {
    type: string
    sql: ${TABLE}.record ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: aa_feedback__sentences__intent_match_data {
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }

  dimension: intent_id {
    type: string
    sql: ${TABLE}.intentId ;;
  }
}

view: aa_feedback__sentences__phrase_match_data {
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }

  dimension: phrase_matcher_id {
    type: string
    sql: ${TABLE}.phraseMatcherId ;;
  }

  dimension: revision_id {
    type: number
    sql: ${TABLE}.revisionId ;;
  }
}
