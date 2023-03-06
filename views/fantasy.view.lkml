# The name of this view in Looker is "Fantasy"
view: fantasy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_SCRATCH"."FANTASY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Certificate" in Explore.

  dimension: certificate {
    type: string
    sql: ${TABLE}."CERTIFICATE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}."DIRECTOR" ;;
  }

  dimension: director_id {
    type: string
    sql: ${TABLE}."DIRECTOR_ID" ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}."GENRE" ;;
  }

  dimension: grossin_ {
    type: number
    sql: ${TABLE}."gross(in $)" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_grossin_ {
    type: sum
    sql: ${grossin_} ;;
  }

  measure: average_grossin_ {
    type: average
    sql: ${grossin_} ;;
  }

  dimension: movie_id {
    type: string
    sql: ${TABLE}."MOVIE_ID" ;;
  }

  dimension: movie_name {
    type: string
    sql: ${TABLE}."MOVIE_NAME" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: runtime {
    type: string
    sql: ${TABLE}."RUNTIME" ;;
  }

  dimension: star {
    type: string
    sql: ${TABLE}."STAR" ;;
  }

  dimension: star_id {
    type: string
    sql: ${TABLE}."STAR_ID" ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}."VOTES" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [movie_name]
  }
}
