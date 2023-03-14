view: union {
  derived_table: {
    sql: SELECT 'ACTION' AS GENRE, * FROM LOOKER_SCRATCH.ACTION
      UNION ALL
      SELECT 'ADVENTURE' AS GENRE, * FROM LOOKER_SCRATCH.ADVENTURE
      UNION ALL
      SELECT 'CRIME' AS GENRE, * FROM LOOKER_SCRATCH.CRIME
      UNION ALL
      SELECT 'FAMILY' AS GENRE, * FROM LOOKER_SCRATCH.FAMILY
      UNION ALL
      SELECT 'FANTASY' AS GENRE, * FROM LOOKER_SCRATCH.FANTASY
      UNION ALL
      SELECT 'film-noir' AS GENRE, * FROM LOOKER_SCRATCH."film-noir"
      UNION ALL
      SELECT 'HISTORY' AS GENRE, * FROM LOOKER_SCRATCH.HISTORY
      UNION ALL
      SELECT 'HORROR' AS GENRE, * FROM LOOKER_SCRATCH.HORROR
      UNION ALL
      SELECT 'MYSTERY' AS GENRE, * FROM LOOKER_SCRATCH.MYSTERY
      UNION ALL
      SELECT 'SCIFI' AS GENRE, * FROM LOOKER_SCRATCH.SCIFI
      UNION ALL
      SELECT 'SPORTS' AS GENRE, * FROM LOOKER_SCRATCH.SPORTS
      UNION ALL
      SELECT 'THRILLER' AS GENRE, * FROM LOOKER_SCRATCH.THRILLER
      UNION ALL
      SELECT 'WAR' AS GENRE, * FROM LOOKER_SCRATCH.WAR
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: genre {
    type: string
    sql: ${TABLE}."IMDB_GENRE" ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  dimension: certificate {
    type: string
    sql: ${TABLE}."CERTIFICATE" ;;
  }

  dimension: runtime {
    type: string
    sql: ${TABLE}."RUNTIME" ;;
  }

  dimension: IMDB_genre {
    hidden:  yes
    type: string
    sql: ${TABLE}."GENRE" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
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

  dimension: grossin_ {
    type: number
    label: "gross(in $)"
    sql: ${TABLE}."gross(in $)" ;;
  }

  measure: total_gross_income {
    type: sum
    sql: ${grossin_};;
    value_format_name: custom
  }

  set: detail {
    fields: [
      genre,
      movie_id,
      movie_name,
      year,
      certificate,
      runtime,
      genre,
      rating,
      description,
      director,
      director_id,
      star,
      star_id,
      votes,
      grossin_
    ]
  }
}
