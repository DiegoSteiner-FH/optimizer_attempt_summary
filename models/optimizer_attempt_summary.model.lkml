connection: "clickhouse-jupiter"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: optimizer_attempt_summary_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: optimizer_attempt_summary_default_datagroup

explore: jupiter_optimizer_attempt_summary {
  label: "Optimizer Attempt Summary"
}
