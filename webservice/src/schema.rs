table! {
    use diesel::sql_types::*;

    results (id) {
        id -> Integer,
        model_path -> Varchar,
        texture_path -> Varchar,
    }
}

allow_tables_to_appear_in_same_query!(
    results,
);
