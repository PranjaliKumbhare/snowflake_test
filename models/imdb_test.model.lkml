# Define the database connection to be used for this model.
connection: "snowflake_test"
include: "/views/*.view"
include: "/Dashboards/*.dashboard.lookml" # include all the views

named_value_format: custom {
  value_format: "[>=1000000]$0.0,,\"M\";[>=1000]$0.0,\"K\";$0.0"
}
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: imdb_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: imdb_test_default_datagroup

explore: union {
  label: "Model"
  view_name: union
  from:  union
}

explore: base {
  label: "Combined"
  view_name: base
  from:  base
}

explore: action {
  label: "IMDB Genres"
  join: base{}
  join: adventure {
    type: full_outer
    sql_on: ${action.movie_id} = ${adventure.movie_id};;
    relationship: many_to_many
  }

  join: crime {
    type: full_outer
    sql_on: ${action.movie_id} = ${crime.movie_id};;
    relationship: many_to_many
  }

  join: family {
    type: full_outer
    sql_on: ${action.movie_id} = ${family.movie_id};;
    relationship: many_to_many
  }

  join: fantasy {
    type: full_outer
    sql_on: ${action.movie_id} = ${fantasy.movie_id};;
    relationship: many_to_many
  }

  join: filmnoir {
    type: full_outer
    sql_on: ${action.movie_id} = ${filmnoir.movie_id};;
    relationship: many_to_many
  }

  join: history {
    type: full_outer
    sql_on: ${action.movie_id} = ${history.movie_id};;
    relationship: many_to_many
  }

  join: horror {
    type: full_outer
    sql_on: ${action.movie_id} = ${horror.movie_id};;
    relationship: many_to_many
  }

  join: mystery {
    type: full_outer
    sql_on: ${action.movie_id} = ${mystery.movie_id};;
    relationship: many_to_many
  }

  join: scifi {
    type: full_outer
    sql_on: ${action.movie_id} = ${scifi.movie_id};;
    relationship: many_to_many
  }

  join: sports {
    type: full_outer
    sql_on: ${action.movie_id} = ${sports.movie_id};;
    relationship: many_to_many
  }

  join: thriller {
    type: full_outer
    sql_on: ${action.movie_id} = ${thriller.movie_id};;
    relationship: many_to_many
  }

  join: war {
    type: full_outer
    sql_on: ${action.movie_id} = ${war.movie_id};;
    relationship: many_to_many
  }
}

# explore: adventure {
#   view_name: adventure
#   from: adventure
# }

# explore: crime {
#   view_name: crime
#   from: crime
# }

# explore: family {
#   view_name: family
#   from: family
# }

# explore: fantasy {
#   view_name: fantasy
#   from: fantasy
# }

# explore: filmnoir {
#   view_name: filmnoir
#   from: filmnoir
# }

# explore: history {
#   view_name: history
#   from: history
# }

# explore: horror {
#   view_name: horror
#   from: horror
# }

# explore: mystery {
#   view_name: mystery
#   from: mystery
# }

# explore: scifi {
#   view_name: scifi
#   from: scifi
# }

# explore: sports {
#   view_name: sports
#   from: sports
# }

# explore: thriller {
#   view_name: thriller
#   from: thriller
# }

# explore: war {
#   view_name: war
#   from: war
# }
