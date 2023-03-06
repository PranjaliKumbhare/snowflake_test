# The name of this view in Looker is "Action"

view: crime {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "CRIME"."ACTION"
    ;;

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

  dimension: movie_id {
    type: string
    sql: ${TABLE}."MOVIE_ID" ;;
    primary_key: yes
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

  measure: total_gross_income {
    type: sum
    sql: ${grossin_};;
    value_format_name: custom
  }
}
