view: jupiter_optimizer_attempt_summary {
    label: "Optimizer Attempt Summary"

  sql_table_name: jupiter.jupiter_optimizer_attempt_summary ;;
  drill_fields: [id]

################################ Date ################################

  dimension_group: created                        { type: time   group_label: "1.Date" timeframes: [raw, time, date, week, month, quarter, year] sql: ${TABLE}.created_at ;;}

################################ Tracking ################################

  dimension: id                                   { primary_key: yes type: string label: "Attempt Id" group_label: "2.Tracking" sql: ${TABLE}."id" ;;}
  dimension: affiliate_id                         { type: string group_label: "2.Tracking" sql: ${TABLE}.affiliate_id ;;}
  dimension: affiliate_type                       { type: string group_label: "2.Tracking" sql: ${TABLE}.affiliate_type ;;}
  dimension: booking_id                           { type: string group_label: "2.Tracking" sql: ${TABLE}.booking_id ;;}
  dimension: campaign_id                          { type: string group_label: "2.Tracking" sql: ${TABLE}.campaign_id ;;}
  dimension: search_id                            { type: string group_label: "2.Tracking" sql: ${TABLE}.search_id ;;}
  dimension: site_id                              { type: number group_label: "2.Tracking" sql: ${TABLE}.site_id ;;}
  dimension: target_id                            { type: string group_label: "2.Tracking" sql: ${TABLE}.target_id ;;}
  dimension: user_currency                        { type: string group_label: "2.Tracking" sql: ${TABLE}.user_currency ;;}
  dimension: package_id                           { type: string group_label: "2.Tracking" sql: ${TABLE}.package_id ;;}
  dimension: labels                               { type: string group_label: "2.Tracking"  sql: ${TABLE}.labels ;;}
  dimension: attemptable_candidates               { type: string group_label: "2.Tracking" sql: ${TABLE}.attemptable ;; }

################################ Trip Information ################################

  dimension: stops                                { type: number group_label: "3.Trip Details" sql: ${TABLE}.stops ;;}
  dimension: destination_airport                  { type: string group_label: "3.Trip Details" sql: ${TABLE}.destination_airport ;;}
  dimension: destination_country                  { type: string group_label: "3.Trip Details" sql: ${TABLE}.destination_country ;;}
  dimension: duration_days                        { type: number group_label: "3.Trip Details" sql: ${TABLE}.duration_days ;;}
  dimension: lead_days                            { type: number group_label: "3.Trip Details" sql: ${TABLE}.lead_days ;;}
  dimension: origin_airport                       { type: string group_label: "3.Trip Details" sql: ${TABLE}.origin_airport ;;}
  dimension: origin_country                       { type: string group_label: "3.Trip Details" sql: ${TABLE}.origin_country ;;}
  dimension: routing                              { type: string group_label: "3.Trip Details" sql: ${TABLE}.routing ;;}
  dimension: trip_type                            { type: string group_label: "3.Trip Details" sql: ${TABLE}.trip_type ;;}
  dimension: adults                               { type: number group_label: "3.Trip Details" sql: ${TABLE}.adults ;;}
  dimension: children                             { type: number group_label: "3.Trip Details" sql: ${TABLE}.children ;;}
  dimension: infants                              { type: number group_label: "3.Trip Details" sql: ${TABLE}.infants ;;}
  dimension: seats                                { type: number group_label: "3.Trip Details" sql: ${TABLE}.seats ;;}

################################ Best Fare ################################

  dimension: best_candidate                       { type: string group_label: "4.Best Fare" sql: ${TABLE}.best ;;}
  dimension: best_revenue                         { type: number group_label: "4.Best Fare" sql: ${TABLE}.best_revenue ;;}

################################ Original Fare ################################

  dimension: checkout_revenue                     { type: number group_label: "5.Original Fare" sql: ${TABLE}.checkout_revenue ;;}
  dimension: original_candidate                   { type: string group_label: "5.Original Fare" sql: ${TABLE}.original ;;}
  dimension: original_fare_type                   { type: string group_label: "5.Original Fare" sql: ${TABLE}.original_fare_type ;;}
  dimension: original_gds                         { type: string group_label: "5.Original Fare" sql: ${TABLE}.original_gds ;;}
  dimension: original_gds_account_id              { type: string group_label: "5.Original Fare" sql: ${TABLE}.original_gds_account_id ;;}
  dimension: original_gds_currency                { type: string group_label: "5.Original Fare" sql: ${TABLE}.original_gds_currency ;;}
  dimension: original_revenue                     { type: number group_label: "5.Original Fare" sql: ${TABLE}.original_revenue ;;}
  dimension: original_validating_carrier          { type: string group_label: "5.Original Fare" sql: ${TABLE}.original_validating_carrier ;;}

################################ Admissible Information ################################

  dimension: best_admissible_candidate            { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible ;;}
  dimension: best_admissible_diff                 { type: number group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_diff ;;}
  dimension: best_admissible_fare_type            { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_fare_type ;;}
  dimension: best_admissible_gds                  { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_gds ;;}
  dimension: best_admissible_gds_account_id       { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_gds_account_id ;;}
  dimension: best_admissible_gds_currency         { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_gds_currency ;;}
  dimension: best_admissible_reprice_type         { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_reprice_type ;;}
  dimension: best_admissible_revenue              { type: number group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_revenue ;;}
  dimension: best_admissible_validating_carrier   { type: string group_label: "6.Admissible Fare" sql: ${TABLE}.best_admissible_validating_carrier ;;}

################################ Booked Fare ################################

  dimension: booked_candidate                     { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked ;;}
  dimension: booked_checkout_diff                 { type: number group_label: "7.Booked Fare" sql: ${TABLE}.booked_checkout_diff ;;}
  dimension: booked_fare_type                     { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_fare_type ;;}
  dimension: booked_gds                           { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_gds ;;}
  dimension: booked_gds_account_id                { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_gds_account_id ;;}
  dimension: booked_gds_currency                  { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_gds_currency ;;}
  dimension: booked_next_diff                     { type: number group_label: "7.Booked Fare" sql: ${TABLE}.booked_next_diff ;;}
  dimension: booked_original_diff                 { type: number group_label: "7.Booked Fare" sql: ${TABLE}.booked_original_diff ;;}
  dimension: booked_reprice_type                  { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_reprice_type ;;}
  dimension: booked_revenue                       { type: number group_label: "7.Booked Fare" sql: ${TABLE}.booked_revenue ;;}
  dimension: booked_validating_carrier            { type: string group_label: "7.Booked Fare" sql: ${TABLE}.booked_validating_carrier ;;}

################################ Next Fare ################################

  dimension: next_candidate                       { type: string group_label: "8.Next Fare" sql: ${TABLE}.next ;;}
  dimension: next_promoted                        { type: string group_label: "8.Next Fare" sql: ${TABLE}.next_promoted ;;}
  dimension: next_promoted_revenue                { type: number group_label: "8.Next Fare" sql: ${TABLE}.next_promoted_revenue ;;}
  dimension: next_revenue                         { type: number group_label: "8.Next Fare" sql: ${TABLE}.next_revenue ;;}

################################ Promoted ################################

  dimension: promoted_attemptable                 { type: string group_label: "9.Promoted" sql: ${TABLE}.promoted_attemptable ;;}
  dimension: promoted_booked_next_diff            { type: number group_label: "9.Promoted" sql: ${TABLE}.promoted_booked_next_diff ;;}
  dimension: promoted_booked_revenue              { type: number group_label: "9.Promoted" sql: ${TABLE}.promoted_booked_revenue ;;}
  dimension: best_promoted_candidate              { type: string group_label: "9.Promoted" sql: ${TABLE}.best_promoted ;;}
  dimension: best_promoted_revenue                { type: number group_label: "9.Promoted" sql: ${TABLE}.best_promoted_revenue ;;}


################################ Measures ################################

  measure: count                                  { type: count drill_fields: [id]}


}
