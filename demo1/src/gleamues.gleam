// gleam values in Elixir

pub fn hi_int() -> Int {
  42
}

pub fn hi_float() -> Float {
  3.14
}

pub fn hi_string() -> String {
  "Hi, I'm a String 👋"
}

pub fn hi_tuple() -> #(Int, String) {
  #(42, "Hi, I'm a tuple 👋")
}

pub fn hi_list() -> List(Int) {
  [1, 2, 3]
}

pub fn hi_bad_list() -> List(Int) {
  // [1, 2, 3, "ain't a duck"]
  []
}

pub type Game {
  PingPong
  Fortnite
  Whatever
}

pub fn hi_custom_type() -> Game {
  PingPong
}

pub type Developer {
  Developer(language: String, yoe: Int)
}

pub fn hi_record() -> Developer {
  Developer("Gleam", 0)
}

pub type Fighter {
  Boxer(name: String, age: Int, punch_power: Int)
  Judoka(name: String, age: Int, throw_power: Int)
}

pub fn hi_record_again() -> Fighter {
  Boxer("Muhammad Ali", 32, 100)
}

pub fn hi_record_again_again() -> Fighter {
  Judoka("Muhammad Ali", 32, 100)
}

pub fn hi_nil() -> Nil {
  Nil
}
