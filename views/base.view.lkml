# include: "/views/*.view"

view: base{
  derived_table: {
    sql: SELECT * FROM "LOOKER_SCRATCH"."{% parameter table_name %}" AS base ;;
  }
  # sql_table_name: "LOOKER_SCRATCH".{% parameter table_name %};;

  parameter: table_name {
    type: unquoted
    allowed_value: {
      label: "Action"
      value: "ACTION"
    }
    allowed_value: {
      label: "Adventure"
      value: "ADVENTURE"
    }
    allowed_value: {
      label: "Crime"
      value: "CRIME"
    }
    allowed_value: {
      label: "Family"
      value: "FAMILY"
    }
    allowed_value: {
      label: "Fantasy"
      value: "FANTASY"
    }
    allowed_value: {
      label: "Film-Noir"
      value: "film-noir"
    }
    allowed_value: {
      label: "History"
      value: "HISTORY"
    }
    allowed_value: {
      label: "Horror"
      value: "HORROR"
    }
    allowed_value: {
      label: "Mystery"
      value: "MYSTERY"
    }
    allowed_value: {
      label: "Scifi"
      value: "SCIFI"
    }
    allowed_value: {
      label: "Sports"
      value: "SPORTS"
    }
    allowed_value: {
      label: "Thriller"
      value: "THRILLER"
    }
    allowed_value: {
      label: "War"
      value: "WAR"
    }
    default_value: "ACTION"
  }

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
