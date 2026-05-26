view: jupiter_optimizer_attempt_summary {
    label: "Optimizer Attempt Summary"

  sql_table_name: jupiter.jupiter_optimizer_attempt_summary ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: adults {
    type: number
    sql: ${TABLE}.adults ;;
  }
  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.affiliate_id ;;
  }
  dimension: affiliate_type {
    type: string
    sql: ${TABLE}.affiliate_type ;;
  }
  dimension: attemptable {
    type: number
    sql: ${TABLE}.attemptable ;;
  }
  dimension: best {
    type: number
    sql: ${TABLE}.best ;;
  }
  dimension: best_admissible {
    type: number
    sql: ${TABLE}.best_admissible ;;
  }
  dimension: best_admissible_diff {
    type: string
    sql: ${TABLE}.best_admissible_diff ;;
  }
  dimension: best_admissible_fare_type {
    type: string
    sql: ${TABLE}.best_admissible_fare_type ;;
  }
  dimension: best_admissible_gds {
    type: string
    sql: ${TABLE}.best_admissible_gds ;;
  }
  dimension: best_admissible_gds_account_id {
    type: string
    sql: ${TABLE}.best_admissible_gds_account_id ;;
  }
  dimension: best_admissible_gds_currency {
    type: string
    sql: ${TABLE}.best_admissible_gds_currency ;;
  }
  dimension: best_admissible_reprice_type {
    type: string
    sql: ${TABLE}.best_admissible_reprice_type ;;
  }
  dimension: best_admissible_revenue {
    type: string
    sql: ${TABLE}.best_admissible_revenue ;;
  }
  dimension: best_admissible_validating_carrier {
    type: string
    sql: ${TABLE}.best_admissible_validating_carrier ;;
  }
  dimension: best_promoted {
    type: number
    sql: ${TABLE}.best_promoted ;;
  }
  dimension: best_promoted_revenue {
    type: string
    sql: ${TABLE}.best_promoted_revenue ;;
  }
  dimension: best_revenue {
    type: string
    sql: ${TABLE}.best_revenue ;;
  }
  dimension: booked {
    type: number
    sql: ${TABLE}.booked ;;
  }
  dimension: booked_checkout_diff {
    type: string
    sql: ${TABLE}.booked_checkout_diff ;;
  }
  dimension: booked_fare_type {
    type: string
    sql: ${TABLE}.booked_fare_type ;;
  }
  dimension: booked_gds {
    type: string
    sql: ${TABLE}.booked_gds ;;
  }
  dimension: booked_gds_account_id {
    type: string
    sql: ${TABLE}.booked_gds_account_id ;;
  }
  dimension: booked_gds_currency {
    type: string
    sql: ${TABLE}.booked_gds_currency ;;
  }
  dimension: booked_next_diff {
    type: string
    sql: ${TABLE}.booked_next_diff ;;
  }
  dimension: booked_original_diff {
    type: string
    sql: ${TABLE}.booked_original_diff ;;
  }
  dimension: booked_reprice_type {
    type: string
    sql: ${TABLE}.booked_reprice_type ;;
  }
  dimension: booked_revenue {
    type: string
    sql: ${TABLE}.booked_revenue ;;
  }
  dimension: booked_validating_carrier {
    type: string
    sql: ${TABLE}.booked_validating_carrier ;;
  }
  dimension: booking_id {
    type: number
    sql: ${TABLE}.booking_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: checkout_revenue {
    type: string
    sql: ${TABLE}.checkout_revenue ;;
  }
  dimension: children {
    type: number
    sql: ${TABLE}.children ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: destination_airport {
    type: string
    sql: ${TABLE}.destination_airport ;;
  }
  dimension: destination_country {
    type: string
    sql: ${TABLE}.destination_country ;;
  }
  dimension: duration_days {
    type: number
    sql: ${TABLE}.duration_days ;;
  }
  dimension: infants {
    type: number
    sql: ${TABLE}.infants ;;
  }
  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }
  dimension: lead_days {
    type: number
    sql: ${TABLE}.lead_days ;;
  }
  dimension: next {
    type: number
    sql: ${TABLE}.next ;;
  }
  dimension: next_promoted {
    type: number
    sql: ${TABLE}.next_promoted ;;
  }
  dimension: next_promoted_revenue {
    type: string
    sql: ${TABLE}.next_promoted_revenue ;;
  }
  dimension: next_revenue {
    type: string
    sql: ${TABLE}.next_revenue ;;
  }
  dimension: origin_airport {
    type: string
    sql: ${TABLE}.origin_airport ;;
  }
  dimension: origin_country {
    type: string
    sql: ${TABLE}.origin_country ;;
  }
  dimension: original {
    type: number
    sql: ${TABLE}.original ;;
  }
  dimension: original_fare_type {
    type: string
    sql: ${TABLE}.original_fare_type ;;
  }
  dimension: original_gds {
    type: string
    sql: ${TABLE}.original_gds ;;
  }
  dimension: original_gds_account_id {
    type: string
    sql: ${TABLE}.original_gds_account_id ;;
  }
  dimension: original_gds_currency {
    type: string
    sql: ${TABLE}.original_gds_currency ;;
  }
  dimension: original_revenue {
    type: string
    sql: ${TABLE}.original_revenue ;;
  }
  dimension: original_validating_carrier {
    type: string
    sql: ${TABLE}.original_validating_carrier ;;
  }
  dimension: package_id {
    type: string
    sql: ${TABLE}.package_id ;;
  }
  dimension: promoted_attemptable {
    type: number
    sql: ${TABLE}.promoted_attemptable ;;
  }
  dimension: promoted_booked_next_diff {
    type: string
    sql: ${TABLE}.promoted_booked_next_diff ;;
  }
  dimension: promoted_booked_revenue {
    type: string
    sql: ${TABLE}.promoted_booked_revenue ;;
  }
  dimension: routing {
    type: string
    sql: ${TABLE}.routing ;;
  }
  dimension: search_id {
    type: string
    sql: ${TABLE}.search_id ;;
  }
  dimension: seats {
    type: number
    sql: ${TABLE}.seats ;;
  }
  dimension: site_id {
    type: number
    sql: ${TABLE}.site_id ;;
  }
  dimension: stops {
    type: number
    sql: ${TABLE}.stops ;;
  }
  dimension: target_id {
    type: number
    sql: ${TABLE}.target_id ;;
  }
  dimension: trip_type {
    type: string
    sql: ${TABLE}.trip_type ;;
  }
  dimension: user_currency {
    type: string
    sql: ${TABLE}.user_currency ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
