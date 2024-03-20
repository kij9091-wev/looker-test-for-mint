view: mintconnetionresult {
  sql_table_name: `mint_connetion_test.mint-connetion-result` ;;
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
  dimension: consumption_sentiment {
    type: string
    sql: ${TABLE}.consumption_sentiment ;;
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
    sql: PARSE_DATE('%Y-%m-%d %H:%M:%S', ${TABLE}.creationtime) ;;
  }
  dimension: entities_creationtime {
    type: string
    sql: ${TABLE}.entities_creationtime ;;
  }
  dimension: entities_line {
    type: number
    sql: ${TABLE}.entities_line ;;
  }
  dimension: entities_partition_0 {
    type: string
    sql: ${TABLE}.entities_partition_0 ;;
  }
  dimension: entities_partition_1 {
    type: string
    sql: ${TABLE}.entities_partition_1 ;;
  }
  dimension: entities_partition_2 {
    type: string
    sql: ${TABLE}.entities_partition_2 ;;
  }
  dimension: entities_partition_3 {
    type: string
    sql: ${TABLE}.entities_partition_3 ;;
  }
  dimension: entities_partition_4 {
    type: string
    sql: ${TABLE}.entities_partition_4 ;;
  }
  dimension: entities_partition_5 {
    type: string
    sql: ${TABLE}.entities_partition_5 ;;
  }
  dimension: entities_text {
    type: string
    sql: ${TABLE}.entities_text ;;
  }
  dimension: entities_translatedtext {
    type: string
    sql: ${TABLE}.entities_translatedtext ;;
  }
  dimension: entitybeginoffset {
    type: number
    sql: ${TABLE}.entitybeginoffset ;;
  }
  dimension: entityendoffset {
    type: number
    sql: ${TABLE}.entityendoffset ;;
  }
  dimension: entityscore {
    type: number
    sql: ${TABLE}.entityscore ;;
  }
  dimension: entitytext {
    type: string
    sql: ${TABLE}.entitytext ;;
  }
  dimension: entitytype {
    type: string
    sql: ${TABLE}.entitytype ;;
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
