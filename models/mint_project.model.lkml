connection: "mint_result_search"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: mint_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mint_project_default_datagroup

explore: mintconnectionconsumption {}

explore: mintconnetionresult {}

