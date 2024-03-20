view: mintconnectionconsumption {
  sql_table_name: `mint_connetion_test.mint-connection-consumption` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: consumption_file {
    type: string
    sql: ${TABLE}.consumption_file ;;
  }
  dimension: consumption_line {
    type: number
    sql: ${TABLE}.consumption_line ;;
  }
  dimension: consumption_messageurl {
    type: string
    sql: ${TABLE}.consumption_messageurl ;;
  }
  dimension: consumption_partition_0 {
    type: string
    sql: ${TABLE}.consumption_partition_0 ;;
  }
  dimension: consumption_partition_1 {
    type: string
    sql: ${TABLE}.consumption_partition_1 ;;
  }
  dimension: consumption_partition_2 {
    type: string
    sql: ${TABLE}.consumption_partition_2 ;;
  }
  dimension: consumption_partition_3 {
    type: string
    sql: ${TABLE}.consumption_partition_3 ;;
  }
  dimension: consumption_partition_4 {
    type: string
    sql: ${TABLE}.consumption_partition_4 ;;
  }
  dimension: consumption_partition_5 {
    type: string
    sql: ${TABLE}.consumption_partition_5 ;;
  }
  dimension: consumption_sentiment {
    type: string
    sql: ${TABLE}.consumption_sentiment ;;
  }
  dimension: consumption_text {
    type: string
    sql: ${TABLE}.consumption_text ;;
  }
  dimension: consumption_translatedtext {
    type: string
    sql: ${TABLE}.consumption_translatedtext ;;
  }
  dimension: creationtime {
    type: string
    sql: ${TABLE}.creationtime ;;
  }
  dimension: date {
    type: date
    sql: PARSE_DATETIME('%Y.%m.%d %H:%M', ${TABLE}.creationtime) ;;
  }
  dimension: line {
    type: number
    sql: ${TABLE}.line ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: messageurl {
    type: string
    sql: ${TABLE}.messageurl ;;
  }
  dimension: mixedscore {
    type: number
    sql: ${TABLE}.mixedscore ;;
  }
  dimension: negativescore {
    type: number
    sql: ${TABLE}.negativescore ;;
  }
  dimension: neutralscore {
    type: number
    sql: ${TABLE}.neutralscore ;;
  }
  dimension: partition_0 {
    type: string
    sql: ${TABLE}.partition_0 ;;
  }
  dimension: partition_1 {
    type: string
    sql: ${TABLE}.partition_1 ;;
  }
  dimension: partition_2 {
    type: string
    sql: ${TABLE}.partition_2 ;;
  }
  dimension: partition_3 {
    type: string
    sql: ${TABLE}.partition_3 ;;
  }
  dimension: partition_4 {
    type: string
    sql: ${TABLE}.partition_4 ;;
  }
  dimension: partition_5 {
    type: string
    sql: ${TABLE}.partition_5 ;;
  }
  dimension: positivescore {
    type: number
    sql: ${TABLE}.positivescore ;;
  }
  dimension: responsemetadata_httpheaders__content_length {
    type: string
    sql: ${TABLE}.responsemetadata_httpheaders.content_length ;;
    group_label: "Responsemetadata Httpheaders"
    group_item_label: "Content Length"
  }
  dimension: responsemetadata_httpheaders__content_type {
    type: string
    sql: ${TABLE}.responsemetadata_httpheaders.content_type ;;
    group_label: "Responsemetadata Httpheaders"
    group_item_label: "Content Type"
  }
  dimension: responsemetadata_httpheaders__date {
    type: string
    sql: ${TABLE}.responsemetadata_httpheaders.date ;;
    group_label: "Responsemetadata Httpheaders"
    group_item_label: "Date"
  }
  dimension: responsemetadata_httpheaders__x_amzn_requestid {
    type: string
    sql: ${TABLE}.responsemetadata_httpheaders.x_amzn_requestid ;;
    group_label: "Responsemetadata Httpheaders"
    group_item_label: "X Amzn Requestid"
  }
  dimension: responsemetadata_httpstatuscode {
    type: number
    sql: ${TABLE}.responsemetadata_httpstatuscode ;;
  }
  dimension: responsemetadata_requestid {
    type: string
    sql: ${TABLE}.responsemetadata_requestid ;;
  }
  dimension: responsemetadata_retryattempts {
    type: number
    sql: ${TABLE}.responsemetadata_retryattempts ;;
  }
  dimension: sourceurl {
    type: string
    sql: ${TABLE}.sourceurl ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
