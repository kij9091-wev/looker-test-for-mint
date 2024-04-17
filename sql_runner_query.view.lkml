
view: sql_runner_query {
  derived_table: {
    sql: SELECT
          mintconnectionconsumption.sourceurl  AS mintconnectionconsumption_sourceurl,
          COUNT(*) AS mintconnectionconsumption_count
      FROM `mint_connetion_test.mint-connection-consumption`  AS mintconnectionconsumption
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mintconnectionconsumption_sourceurl {
    type: string
    sql: ${TABLE}.mintconnectionconsumption_sourceurl ;;
  }

  dimension: mintconnectionconsumption_count {
    type: number
    sql: ${TABLE}.mintconnectionconsumption_count ;;
  }

  set: detail {
    fields: [
        mintconnectionconsumption_sourceurl,
	mintconnectionconsumption_count
    ]
  }
}
