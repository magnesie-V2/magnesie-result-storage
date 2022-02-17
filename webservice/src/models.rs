use super::schema::{results};

/// Description of a result
#[derive(Serialize, Deserialize, Identifiable, Queryable, Insertable)]
pub struct Result {
    pub id: i32,
    pub name: String,
    pub model_path: String,
    pub texture_path: String,
}

/// Description of a request to add a result to the database
#[derive(Serialize, Deserialize)]
pub struct AddResultRequest {
    pub submission_id: i32,
    pub name: String,
    pub result_url: String,
}