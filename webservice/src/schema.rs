table! {
    use diesel::sql_types::*;

    results (id) {
        id -> Integer,
        name -> Varchar,
        model_path -> Varchar,
        texture_path -> Varchar,
        total_consumption_joules -> Integer,
    }
}

allow_tables_to_appear_in_same_query!(
    results,
);
