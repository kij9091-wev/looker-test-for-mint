
view: get_word_cloud_query {
  derived_table: {
    sql: SELECT
          mintconnetionresult.entitytext  AS mintconnetionresult_entitytext,
          COUNT(*) AS mintconnetionresult_count
      FROM `mint_connetion_test.mint-connetion-result`  AS mintconnetionresult
      GROUP BY
          mintconnetionresult_entitytext
      ORDER BY
          mintconnetionresult_count DESC
      LIMIT 5000 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mintconnetionresult_entitytext {
    type: string
    sql: ${TABLE}.mintconnetionresult_entitytext ;;
  }

  dimension: mintconnetionresult_count {
    type: number
    sql: ${TABLE}.mintconnetionresult_count ;;
  }

  set: detail {
    fields: [
        mintconnetionresult_entitytext,
	mintconnetionresult_count
    ]
  }
}
