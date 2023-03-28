- dashboard: imdb_new
  title: IMDB_new
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: 'Dsshboard with Navigation Bar'
  preferred_slug: AmMEm64as3a7t4iLafiJ3T
  elements:
  - title: Top 10 Movies with the Highest Income
    name: Top 10 Movies with the Highest Income
    model: imdb_test
    explore: union
    type: looker_column
    fields: [union.year, union.grossin_, union.movie_name]
    filters: {}
    sorts: [union.grossin_ desc]
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: union.movie_name, id: union.movie_name,
            name: Movie Name}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    defaults_version: 1
    hidden_fields: [union.year]
    listen:
      Imdb Genre: union.imdb_genre
      Year: union.year
      gross(in $): union.grossin_
    row: 0
    col: 0
    width: 24
    height: 10
  - title: Top 10 Movies and Stars with the Highest Votes
    name: Top 10 Movies and Stars with the Highest Votes
    model: imdb_test
    explore: union
    type: looker_grid
    fields: [union.year, union.movie_name, union.star, union.votes]
    filters:
      union.votes: NOT NULL
    sorts: [union.votes desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [union.votes]}]
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    listen:
      Imdb Genre: union.imdb_genre
      Year: union.year
    row: 10
    col: 0
    width: 24
    height: 6
  - title: Top 10 Directors
    name: Top 10 Directors
    model: imdb_test
    explore: union
    type: looker_bar
    fields: [union.year, union.grossin_, union.director, union.movie_name]
    filters: {}
    sorts: [union.grossin_ desc]
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [union.year, union.movie_name]
    listen:
      Imdb Genre: union.imdb_genre
      Year: union.year
      gross(in $): union.grossin_
    row: 16
    col: 0
    width: 24
    height: 8
  - title: Top 10 Highest Rated Movies
    name: Top 10 Highest Rated Movies
    model: imdb_test
    explore: union
    type: looker_grid
    fields: [union.year, union.movie_name, union.rating]
    filters: {}
    sorts: [union.rating desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Imdb Genre: union.imdb_genre
      Year: union.year
      Rating: union.rating
    row: 24
    col: 0
    width: 24
    height: 6
  - title: Year wise Trend of Gross Income
    name: Year wise Trend of Gross Income
    model: imdb_test
    explore: union
    type: looker_line
    fields: [union.year, total_gross_income]
    filters: {}
    sorts: [union.year]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: Total Gross
          Income, value_format: !!null '', value_format_name: !!null '', based_on: union.grossin_,
        _kind_hint: measure, measure: total_gross_income, type: sum, _type_hint: number}]
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
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 30
    col: 0
    width: 24
    height: 6
  - title: Total Gross Income by Genre
    name: Total Gross Income by Genre
    model: imdb_test
    explore: union
    type: looker_line
    fields: [union.imdb_genre, total_gross_income]
    sorts: [total_gross_income desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: Total Gross
          Income, value_format: !!null '', value_format_name: !!null '', based_on: union.grossin_,
        _kind_hint: measure, measure: total_gross_income, type: sum, _type_hint: number}]
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
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential2,
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 36
    col: 0
    width: 24
    height: 6
  filters:
  - name: Imdb Genre
    title: Imdb Genre
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: imdb_test
    explore: union
    listens_to_filters: []
    field: union.imdb_genre
  - name: Year
    title: Year
    type: field_filter
    default_value: "[1900,2023]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 1900
        max: 2023
    model: imdb_test
    explore: union
    listens_to_filters: []
    field: union.year
  - name: Rating
    title: Rating
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: imdb_test
    explore: union
    listens_to_filters: []
    field: union.rating
  - name: gross(in $)
    title: gross(in $)
    type: field_filter
    default_value: not null
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: imdb_test
    explore: union
    listens_to_filters: []
    field: union.grossin_
