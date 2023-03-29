- dashboard: imdb_new
  title: IMDB_new
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
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
    row: 19
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
    row: 32
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
    row: 41
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
    row: 52
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
    row: 61
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
    row: 67
    col: 0
    width: 24
    height: 6
  - title: Highest Gross Income
    name: Highest Gross Income
    model: imdb_test
    explore: union
    type: single_value
    fields: [union.year, union.total_gross_income]
    filters: {}
    sorts: [union.total_gross_income desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color: "#683AAE"
    single_value_title: Total Gross Income
    value_format: '"0.000,,\" M\""'
    comparison_label: Year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 10
    col: 0
    width: 8
    height: 6
  - title: Highest Gross Income
    name: Highest Gross Income (2)
    model: imdb_test
    explore: union
    type: single_value
    fields: [union.total_gross_income, union.imdb_genre]
    filters: {}
    sorts: [union.total_gross_income desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color: "#C762AD"
    single_value_title: Total Gross Income
    value_format: ''
    comparison_label: Genre
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 10
    col: 8
    width: 8
    height: 6
  - title: Highest Gross Income
    name: Highest Gross Income (3)
    model: imdb_test
    explore: union
    type: single_value
    fields: [union.movie_name, union.grossin_]
    filters: {}
    sorts: [union.grossin_ desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color: "#EE9093"
    single_value_title: Total Gross Income
    value_format: ''
    comparison_label: Gross Income
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 10
    col: 16
    width: 8
    height: 6
  - title: Top Performers based on Income
    name: Top Performers based on Income
    model: imdb_test
    explore: union
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [union.movie_name, union.director, union.grossin_, union.star]
    filters: {}
    sorts: [union.grossin_ desc]
    limit: 5
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '8'
    orientation: auto
    style_union.movie_name: "#9e1c31"
    show_title_union.movie_name: true
    title_placement_union.movie_name: above
    value_format_union.movie_name: ''
    style_union.director: "#ab5e34"
    show_title_union.director: true
    title_placement_union.director: above
    value_format_union.director: ''
    show_comparison_union.director: false
    style_union.grossin_: "#cca91d"
    show_title_union.grossin_: true
    title_placement_union.grossin_: above
    value_format_union.grossin_: ''
    show_comparison_union.grossin_: false
    style_union.star: "#6f9e0b"
    show_title_union.star: true
    title_placement_union.star: above
    value_format_union.star: ''
    show_comparison_union.star: false
    style_union.total_gross_income: "#3A4245"
    show_title_union.total_gross_income: true
    title_placement_union.total_gross_income: above
    value_format_union.total_gross_income: ''
    show_comparison_union.total_gross_income: false
    font_size: med
    font_color: yellow
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color_enabled: true
    custom_color: "#EE9093"
    show_single_value_title: true
    single_value_title: Total Gross Income
    value_format: ''
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Gross Income
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    series_types: {}
    hidden_pivots: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 73
    col: 0
    width: 12
    height: 10
  - title: Top Performers based on Votes
    name: Top Performers based on Votes
    model: imdb_test
    explore: union
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [union.movie_name, union.director, union.votes, union.star]
    filters:
      union.votes: NOT NULL
    sorts: [union.votes desc]
    limit: 5
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '8'
    orientation: auto
    style_union.movie_name: "#9e1c31"
    show_title_union.movie_name: true
    title_placement_union.movie_name: above
    value_format_union.movie_name: ''
    style_union.director: "#ab5e34"
    show_title_union.director: true
    title_placement_union.director: above
    value_format_union.director: ''
    show_comparison_union.director: false
    style_union.votes: "#b9bd1e"
    show_title_union.votes: true
    title_placement_union.votes: above
    value_format_union.votes: ''
    show_comparison_union.votes: false
    style_union.star: "#6f9e0b"
    show_title_union.star: true
    title_placement_union.star: above
    value_format_union.star: ''
    show_comparison_union.star: false
    style_union.grossin_: "#cca91d"
    show_title_union.grossin_: true
    title_placement_union.grossin_: above
    value_format_union.grossin_: ''
    show_comparison_union.grossin_: false
    style_union.total_gross_income: "#3A4245"
    show_title_union.total_gross_income: true
    title_placement_union.total_gross_income: above
    value_format_union.total_gross_income: ''
    show_comparison_union.total_gross_income: false
    font_size: med
    font_color: yellow
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
    custom_color_enabled: true
    custom_color: "#EE9093"
    show_single_value_title: true
    single_value_title: Total Gross Income
    value_format: ''
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Gross Income
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e,
          palette_id: dc65924d-47ce-45e6-a469-9977cbc6bd0e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    series_types: {}
    hidden_pivots: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Year: union.year
      Imdb Genre: union.imdb_genre
      Rating: union.rating
      gross(in $): union.grossin_
    row: 73
    col: 12
    width: 12
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style="border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; background: #eaf1fe; height: 100px; text-align: center; margin-bottom: 10px;">

      <b><h1 style= "font-size: 28px;"> Total Gross Income </h1></b>
      <p> For Movie of all Genres </p>

      </div>

    row: 7
    col: 0
    width: 24
    height: 3
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style='background-color: #eeddff; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px;'>

      <img style="height: 60px; margin-top:10px;" src="https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg"/>

      <h2 style='margin-bottom: 15px;'>About Dataset</h2>

      <p>The movie industry is a vast and ever-growing landscape, with countless movies being produced each year. Keeping track of all these movies and their characteristics can be a daunting task for researchers, film enthusiasts, and data scientists alike. That's where a comprehensive dataset that lists all movies and their genre can come in handy.

      </p>

      </div>
    row: 2
    col: 0
    width: 24
    height: 5
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ffeedd; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Which are the Top 10 Movies with the Highest Income?</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 16
    col: 0
    width: 24
    height: 3
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-radius: 5px; padding: 5px 10px; background: #412399; height: 60px; color: red;">

      <nav style="font-size: 18px;">

        <img style="color: #efefef; padding: 5px 15px; float: left; height: 40px;" src="https://wwwstatic.lookercdn.com/logos/looker_all_white.svg"/>

        <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold;" href="https://www.imdb.com/">☰

       Home</a>

        <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="https://www.kaggle.com/datasets/rajugc/imdb-movies-dataset-based-on-genre/versions/2?resource=download">Datatset</a>

        <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="https://tredencepartner.cloud.looker.com/projects/imdb_test/files/models/imdb_test.model.lkml">LookML</a>

        <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="https://tredencepartner.cloud.looker.com/boards/10">Boards</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ffdddd; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Which are the Top 10 Highest Voted Stars?</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 29
    col: 0
    width: 24
    height: 3
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ddeeff; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Which are the Top 10 Highest Rated Movies?</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 49
    col: 0
    width: 24
    height: 3
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ddffee; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Which are the Top 10 Directors with the Highest Income?</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 38
    col: 0
    width: 24
    height: 3
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ffc891; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Trends of Gross Income</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 58
    col: 0
    width: 24
    height: 3
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <div style='background-color: #ffc4e2; padding: 5px 10px; border: solid 1px #ededed; border-radius: 5px; text-align: center;'>

      <h3 style='margin-bottom: 10px; font-weight: bold;'>Top Performers</h3>

      <p>Filters are available to get your desired outcomes</p>

      </div>

    row: 83
    col: 0
    width: 24
    height: 3
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
