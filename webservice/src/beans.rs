
// Always use a limit to prevent DoS attacks.
const LIMIT: u64 = 256;

/*
*/
#[derive(Serialize, Identifiable, Queryable)]
#[table_name="results"]
pub struct ResBean {
    pub id: i32,
    pub path: String,
}
