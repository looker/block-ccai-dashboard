- dashboard: agent_assist_dashboard
  title: Agent Assist Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Assist Rate
    name: Assist Rate
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [conversation_sr_clicked, conversation_count]
    filters: {}
    limit: 500
    total: true
    dynamic_fields: [{table_calculation: assist_rate_sr, label: assist_rate_sr, expression: "${conversation_sr_clicked}\
          \ / ${conversation_count}", value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number, is_disabled: false}, {measure: message_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_count,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_count, conversation_sr_clicked]
    note_state: collapsed
    note_display: hover
    note_text: The percentage of conversation with at least one Clicked smart reply
    listen:
      Create Time Pst Date: aa_feedback.create_time_pst_date
    row: 7
    col: 0
    width: 4
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-

      #Smart Reply#
    row: 0
    col: 0
    width: 17
    height: 3
  - title: Effective CTR Trend
    name: Effective CTR Trend
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [aa_feedback.create_time_pst_date, message_sr_effective_count, message_sr_clicked_effective_count]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Effective CTR, orientation: left, series: [{axisId: message_sr_effective_ctr,
            id: message_sr_effective_ctr, name: message_sr_effective_ctr}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_sr_effective_count, message_sr_clicked_effective_count]
    listen: {}
    row: 3
    col: 4
    width: 13
    height: 4
  - title: Effective CTR
    name: Effective CTR
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_sr_effective_count, message_sr_clicked_effective_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Effective CTR
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_sr_effective_count, message_sr_clicked_effective_count]
    note_state: collapsed
    note_display: hover
    note_text: Percentage of agent messages sent using Smart Reply
    listen: {}
    row: 3
    col: 0
    width: 4
    height: 4
  - title: Message Allowlist Coverage
    name: Message Allowlist Coverage
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_covered_sr_allowlist_count, message_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {measure: message_covered_sr_allowlist_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_covered_sr_allowlist_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {table_calculation: message_coverage, label: message_coverage, expression: "${message_covered_sr_allowlist_count}/${message_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Message Allowlist Coverage
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_covered_sr_allowlist_count, message_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: Percentage of messages that are covered by smart reply allowlist.
    listen: {}
    row: 11
    col: 0
    width: 4
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-

      #Smart Compose#
    row: 15
    col: 0
    width: 17
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-

      #Article Suggestion#
    row: 30
    col: 0
    width: 17
    height: 3
  - title: Ruogu Explore
    name: Ruogu Explore
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [conversation_as_clicked, conversation_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {measure: message_covered_sr_allowlist_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_covered_sr_allowlist_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {table_calculation: message_coverage, label: message_coverage, expression: "${message_covered_sr_allowlist_count}/${message_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {based_on: aa_feedback.conversation_name,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: assist_rate_as, _type_hint: number, category: table_calculation,
        expression: "${conversation_as_clicked}/${conversation_count}", label: assist_rate_as,
        value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Assist Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_as_clicked, conversation_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of conversations with at least one clicked Article suggestion.
    listen: {}
    row: 37
    col: 0
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (2)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_as_clicked_count, message_as_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {measure: message_covered_sr_allowlist_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_covered_sr_allowlist_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {table_calculation: message_coverage, label: message_coverage, expression: "${message_covered_sr_allowlist_count}/${message_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: assist_rate_as, _type_hint: number, category: table_calculation,
        expression: "${conversation_as_clicked}/${conversation_count}", label: assist_rate_as,
        value_format: !!null '', value_format_name: percent_2, is_disabled: true},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: message_as_ctr, _type_hint: number, category: table_calculation,
        expression: "${message_as_clicked_count}/${message_as_count}", label: message_as_ctr,
        value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Click Through Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_as_clicked_count, message_as_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The number of messages with clicked article suggestion per number of
      messages that has article suggestion annotations.
    listen: {}
    row: 33
    col: 0
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (3)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_as_positive_count, message_as_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_as_positive_rate,
        _type_hint: number, category: table_calculation, expression: "${message_as_positive_count}/${message_as_count}",
        label: message_as_positive_rate, value_format: !!null '', value_format_name: percent_2},
      {measure: message_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_count, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive_count, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {measure: message_covered_sr_allowlist_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_covered_sr_allowlist_count, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Positive Feedback Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_as_positive_count, message_as_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of the correct/partially correct article suggestions
      in all messages with suggestions.
    listen: {}
    row: 41
    col: 0
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (4)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_as_count, message_as_negative_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_as_positive_rate,
        _type_hint: number, category: table_calculation, expression: "${message_as_positive_count}/${message_as_count}",
        label: message_as_positive_rate, value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive_count, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {measure: message_covered_sr_allowlist_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_covered_sr_allowlist_count, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative_count, value_format: !!null '', value_format_name: !!null ''},
      {_kind_hint: measure, table_calculation: message_as_negative_rate, _type_hint: number,
        category: table_calculation, expression: "${message_as_negative_count} / ${message_as_count}",
        label: message_as_negative_rate, value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Negative Feedback Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_as_count, message_as_negative_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of incorrect article suggestions in all messages with
      suggestions.
    listen: {}
    row: 41
    col: 4
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (5)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_as_positive_count, message_as_negative_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_as_negative_rate,
        _type_hint: number, category: table_calculation, expression: "${message_as_negative_count}\
          \ / ${message_as_count}", label: message_as_negative_rate, value_format: !!null '',
        value_format_name: percent_2, is_disabled: true}, {measure: message_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_count,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive_count, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {measure: message_covered_sr_allowlist_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_covered_sr_allowlist_count, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative_count, value_format: !!null '', value_format_name: !!null ''},
      {_kind_hint: measure, table_calculation: as_feedback_positivity_rate, _type_hint: number,
        category: table_calculation, expression: "${message_as_positive_count}/${message_as_negative_count}",
        label: as_feedback_positivity_rate, value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Feedback Positivity Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_as_positive_count, message_as_negative_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The number of messages with correct/partially correct article suggestions
      to the number of messages with incorrect suggestions
    listen: {}
    row: 41
    col: 8
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (6)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [conversation_sc_clicked, conversation_count]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_as_negative_rate,
        _type_hint: number, category: table_calculation, expression: "${message_as_negative_count}\
          \ / ${message_as_count}", label: message_as_negative_rate, value_format: !!null '',
        value_format_name: percent_2, is_disabled: true}, {measure: message_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_count,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive_count, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {measure: message_covered_sr_allowlist_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_covered_sr_allowlist_count, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative_count, value_format: !!null '', value_format_name: !!null ''},
      {_kind_hint: measure, table_calculation: as_feedback_positivity_rate, _type_hint: number,
        category: table_calculation, expression: "${message_as_positive_count}/${message_as_negative_count}",
        label: as_feedback_positivity_rate, value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_sc_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: sc_assist_rate, _type_hint: number, category: table_calculation,
        expression: "${conversation_sc_clicked}/${conversation_count}", label: sc_assist_rate,
        value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Assist Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_sc_clicked, conversation_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of conversations with at least one clicked Smart Compose
      suggestion.
    listen: {}
    row: 22
    col: 0
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (7)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_sc_displayed, message_sc]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_sr_display_rate,
        _type_hint: number, category: table_calculation, expression: "${message_sc_displayed}/${message_sc}",
        label: message_sr_display_rate, value_format: !!null '', value_format_name: percent_2},
      {measure: message_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_count, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_sr_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${aa_feedback__sentences__annotations.clicked}=yes', label: message_sr_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_faq_useful, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_faq_useful, value_format: !!null '', value_format_name: !!null ''},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"', _kind_hint: measure,
        measure: message_sr_effective, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${next_sentences.next_participant_role}="HUMAN_AGENT"', label: message_sr_effective,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        _kind_hint: measure, measure: message_sr_clicked_effective, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        label: message_sr_clicked_effective, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback__sentences.id, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        _kind_hint: measure, measure: message_covered_sr_allowlist, type: count_distinct,
        _type_hint: number, category: measure, expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        label: message_covered_sr_allowlist, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_sc_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.displayed}=yes', _kind_hint: measure,
        measure: message_sc_displayed, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE" AND
          ${aa_feedback__sentences__annotations.displayed}=yes', label: message_sc_displayed,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        _kind_hint: measure, measure: message_sc, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        label: message_sc, value_format: !!null '', value_format_name: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Display Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: message_faq_useful_count,
            id: message_faq_useful_count, name: message_faq_useful_count}, {axisId: message_faq_count,
            id: message_faq_count, name: message_faq_count}, {axisId: message_count,
            id: message_count, name: message_count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: message_as_useful_rate, id: message_as_useful_rate,
            name: message_as_useful_rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_sc_displayed, message_sc]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of the messages with Smart Compose suggestions that
      were displayed.
    listen: {}
    row: 26
    col: 0
    width: 4
    height: 4
  - title: Ruogu Explore
    name: Ruogu Explore (8)
    model: gxs_demo
    explore: aa_feedback
    type: single_value
    fields: [message_sc, message_sc_clicked]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_sr_display_rate,
        _type_hint: number, category: table_calculation, expression: "${message_sc_displayed}/${message_sc}",
        label: message_sr_display_rate, value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_sr_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${aa_feedback__sentences__annotations.clicked}=yes', label: message_sr_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_faq_useful, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_faq_useful, value_format: !!null '', value_format_name: !!null ''},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"', _kind_hint: measure,
        measure: message_sr_effective, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${next_sentences.next_participant_role}="HUMAN_AGENT"', label: message_sr_effective,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        _kind_hint: measure, measure: message_sr_clicked_effective, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        label: message_sr_clicked_effective, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback__sentences.id, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        _kind_hint: measure, measure: message_covered_sr_allowlist, type: count_distinct,
        _type_hint: number, category: measure, expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        label: message_covered_sr_allowlist, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_sc_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.displayed}=yes', _kind_hint: measure,
        measure: message_sc_displayed, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE" AND
          ${aa_feedback__sentences__annotations.displayed}=yes', label: message_sc_displayed,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        _kind_hint: measure, measure: message_sc, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        label: message_sc, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_sc_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE" AND
          ${aa_feedback__sentences__annotations.clicked}=yes', label: message_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: message_sc_click_rate, _type_hint: number, category: table_calculation,
        expression: "${message_sc_clicked}/${message_sc}", label: message_sc_click_rate,
        value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    single_value_title: Acceptance Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Display Rate, orientation: left, series: [{axisId: message_sr_display_rate,
            id: message_sr_display_rate, name: message_sr_display_rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_sc, message_sc_clicked]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: hover
    note_text: The percentage of the messages with Smart Compose suggestions that
      were clicked
    listen: {}
    row: 18
    col: 0
    width: 4
    height: 4
  - title: Acceptance Rate Trend
    name: Acceptance Rate Trend
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [message_sc, message_sc_clicked, aa_feedback.create_time_pst_date]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_sr_display_rate,
        _type_hint: number, category: table_calculation, expression: "${message_sc_displayed}/${message_sc}",
        label: message_sr_display_rate, value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_sr_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${aa_feedback__sentences__annotations.clicked}=yes', label: message_sr_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_faq_useful, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_faq_useful, value_format: !!null '', value_format_name: !!null ''},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"', _kind_hint: measure,
        measure: message_sr_effective, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY" AND
          ${next_sentences.next_participant_role}="HUMAN_AGENT"', label: message_sr_effective,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        _kind_hint: measure, measure: message_sr_clicked_effective, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"',
        label: message_sr_clicked_effective, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback__sentences.id, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        _kind_hint: measure, measure: message_covered_sr_allowlist, type: count_distinct,
        _type_hint: number, category: measure, expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes",
        label: message_covered_sr_allowlist, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_sc_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.displayed}=yes', _kind_hint: measure,
        measure: message_sc_displayed, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE" AND
          ${aa_feedback__sentences__annotations.displayed}=yes', label: message_sc_displayed,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        _kind_hint: measure, measure: message_sc, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"',
        label: message_sc, value_format: !!null '', value_format_name: !!null ''},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_sc_clicked, type: count_distinct, _type_hint: number, category: measure,
        expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE" AND
          ${aa_feedback__sentences__annotations.clicked}=yes', label: message_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: message_sc_click_rate, _type_hint: number, category: table_calculation,
        expression: "${message_sc_clicked}/${message_sc}", label: message_sc_click_rate,
        value_format: !!null '', value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Acceptance Rate, orientation: left, series: [{axisId: message_sc_click_rate,
            id: message_sc_click_rate, name: message_sc_click_rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Acceptance Rate
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_sc, message_sc_clicked]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 18
    col: 4
    width: 13
    height: 4
  - title: Assist Rate Trend
    name: Assist Rate Trend
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [conversation_sr_clicked, conversation_count, aa_feedback.create_time_pst_date]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{table_calculation: assist_rate_sr, label: assist_rate_sr, expression: "${conversation_sr_clicked}\
          \ / ${conversation_count}", value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number, is_disabled: false}, {measure: message_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_count,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Assist Rate, orientation: left, series: [{axisId: assist_rate_sr,
            id: assist_rate_sr, name: assist_rate_sr}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_count, conversation_sr_clicked]
    listen: {}
    row: 7
    col: 4
    width: 13
    height: 4
  - title: Assist Rate Trend
    name: Assist Rate Trend (2)
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [conversation_sc_clicked, conversation_count, aa_feedback.create_time_pst_date]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{_kind_hint: measure, table_calculation: message_as_negative_rate,
        _type_hint: number, category: table_calculation, expression: "${message_as_negative_count}\
          \ / ${message_as_count}", label: message_as_negative_rate, value_format: !!null '',
        value_format_name: percent_2, is_disabled: true}, {measure: message_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_count,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: message_sr_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        _kind_hint: measure, measure: message_as_positive_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")',
        label: message_as_positive_count, value_format: !!null '', value_format_name: !!null ''},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {measure: message_covered_sr_allowlist_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_covered_sr_allowlist_count, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        _kind_hint: measure, measure: message_as_negative_count, type: count_distinct,
        _type_hint: number, category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="NOT_CORRECT")',
        label: message_as_negative_count, value_format: !!null '', value_format_name: !!null ''},
      {_kind_hint: measure, table_calculation: as_feedback_positivity_rate, _type_hint: number,
        category: table_calculation, expression: "${message_as_positive_count}/${message_as_negative_count}",
        label: as_feedback_positivity_rate, value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {based_on: aa_feedback.conversation_name, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_sc_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="SMART_COMPOSE"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_sc_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: sc_assist_rate, _type_hint: number, category: table_calculation,
        expression: "${conversation_sc_clicked}/${conversation_count}", label: sc_assist_rate,
        value_format: !!null '', value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Assist Rate, orientation: left, series: [{axisId: sc_assist_rate,
            id: sc_assist_rate, name: sc_assist_rate}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Assist Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_sc_clicked, conversation_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 22
    col: 4
    width: 13
    height: 4
  - title: Assist Rate Trend
    name: Assist Rate Trend (3)
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [conversation_as_clicked, conversation_count, aa_feedback.create_time_pst_date]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {measure: message_covered_sr_allowlist_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_covered_sr_allowlist_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {table_calculation: message_coverage, label: message_coverage, expression: "${message_covered_sr_allowlist_count}/${message_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {based_on: aa_feedback.conversation_name,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: assist_rate_as, _type_hint: number, category: table_calculation,
        expression: "${conversation_as_clicked}/${conversation_count}", label: assist_rate_as,
        value_format: !!null '', value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Assist Rate, orientation: left, series: [{axisId: assist_rate_as,
            id: assist_rate_as, name: assist_rate_as}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Assist Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [conversation_as_clicked, conversation_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 37
    col: 4
    width: 13
    height: 4
  - title: Click Through Rate Trend
    name: Click Through Rate Trend
    model: gxs_demo
    explore: aa_feedback
    type: looker_line
    fields: [message_as_clicked_count, message_as_count, aa_feedback.create_time_pst_date]
    fill_fields: [aa_feedback.create_time_pst_date]
    filters:
      aa_feedback.create_time_pst_date: after 2021/04/01
    sorts: [aa_feedback.create_time_pst_date desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: message_count, based_on: aa_feedback__sentences.id,
        type: count_distinct, label: message_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: message_sr_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"'},
      {measure: message_sr_clicked_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_sr_clicked_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: count_of_id,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: Count of
          ID, expression: !!null '', _kind_hint: measure, _type_hint: number}, {measure: message_as_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_as_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"'},
      {measure: message_as_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_as_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: message_faq_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"'},
      {measure: message_faq_useful_count, based_on: aa_feedback__sentences.id, type: count_distinct,
        label: message_faq_useful_count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="FAQ"
          AND (${aa_feedback__sentences__annotations.clicked}=yes OR ${aa_feedback__sentences__annotations.correctness_level}="FULLY_CORRECT"
          OR ${aa_feedback__sentences__annotations.correctness_level}="PARTIALLY_CORRECT")'},
      {measure: conversation_count, based_on: aa_feedback.conversation_name, type: count_distinct,
        label: conversation_count, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: conversation_sr_clicked, based_on: aa_feedback.conversation_name,
        type: count_distinct, label: conversation_sr_clicked, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes'}, {measure: message_sr_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'}, {measure: message_sr_clicked_effective_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_sr_clicked_effective_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: '${aa_feedback__sentences__annotations.type}="SMART_REPLY"
          AND ${aa_feedback__sentences__annotations.clicked}=yes AND ${next_sentences.next_participant_role}="HUMAN_AGENT"'},
      {table_calculation: message_sr_effective_ctr, label: message_sr_effective_ctr,
        expression: "${message_sr_clicked_effective_count}/${message_sr_effective_count}",
        value_format: !!null '', value_format_name: percent_2, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {measure: message_covered_sr_allowlist_count,
        based_on: aa_feedback__sentences.id, type: count_distinct, label: message_covered_sr_allowlist_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, filter_expression: "${aa_feedback__sentences.is_covered_by_smart_reply_allowlist}=yes"},
      {table_calculation: message_coverage, label: message_coverage, expression: "${message_covered_sr_allowlist_count}/${message_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {based_on: aa_feedback__sentences.id,
        filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: conversation_as_clicked, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: conversation_as_clicked,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: assist_rate_as, _type_hint: number, category: table_calculation,
        expression: "${conversation_as_clicked}/${conversation_count}", label: assist_rate_as,
        value_format: !!null '', value_format_name: percent_2, is_disabled: true},
      {based_on: aa_feedback__sentences.id, filter_expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', _kind_hint: measure,
        measure: message_as_clicked_count, type: count_distinct, _type_hint: number,
        category: measure, expression: '${aa_feedback__sentences__annotations.type}="ARTICLE_SUGGESTION"
          AND ${aa_feedback__sentences__annotations.clicked}=yes', label: message_as_clicked_count,
        value_format: !!null '', value_format_name: !!null ''}, {_kind_hint: measure,
        table_calculation: message_as_ctr, _type_hint: number, category: table_calculation,
        expression: "${message_as_clicked_count}/${message_as_count}", label: message_as_ctr,
        value_format: !!null '', value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: Click Through Rate, orientation: left, series: [{axisId: message_as_ctr,
            id: message_as_ctr, name: message_as_ctr}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Click Through Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [message_as_clicked_count, message_as_count]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 33
    col: 4
    width: 13
    height: 4
  filters:
  - name: Create Time Pst Date
    title: Create Time Pst Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: gxs_demo
    explore: aa_feedback
    listens_to_filters: []
    field: aa_feedback.create_time_pst_date
