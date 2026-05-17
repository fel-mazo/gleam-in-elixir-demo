import friendly_id as id

pub fn create_id() -> String {
  id.new_generator()
  |> id.set_generator_separator("X")
  |> id.generate()
}
