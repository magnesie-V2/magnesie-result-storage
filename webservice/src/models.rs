use super::schema::{results};

#[derive(Serialize, Deserialize, Identifiable, Queryable, Insertable)]
pub struct Result {
    pub id: i32,
    pub path: String,
}

#[derive(Serialize, Deserialize)]
pub struct AddResultRequest {
    pub submission_id: i32,
    pub result_url: String,
}