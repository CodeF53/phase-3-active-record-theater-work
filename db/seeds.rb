$role_data = [
  {character_name: "Robin Hood"},
  {character_name: "Robin Hood1"},
  {character_name: "Robin Hood2"},
  {character_name: "Robin Hood3"},
  {character_name: "Robin Hood4"},
  {character_name: "Robin Hood5"},
  {character_name: "Robin Hood6"},
  {character_name: "Robin Hood7"},
  {character_name: "Robin Hood8"},
  {character_name: "Robin Hood9"},
  {character_name: "Robin Hood10"}
]
$audition_data = [
  {
      actor: "actor1",
      location: "place1",
      phone: "111",
      hired: false,
      role_id: "1"
  },
  {
      actor: "actor2",
      location: "place2",
      phone: "222",
      hired: false,
      role_id: "2"
  },
  {
      actor: "actor3",
      location: "place3",
      phone: "333",
      hired: false,
      role_id: "3"
  },
  {
      actor: "actor4",
      location: "place4",
      phone: "444",
      hired: false,
      role_id: "4"
  },
  {
      actor: "actor5",
      location: "place5",
      phone: "555",
      hired: false,
      role_id: "5"
  },
  {
      actor: "actor6",
      location: "place6",
      phone: "666",
      hired: false,
      role_id: "6"
  },
  {
      actor: "actor7",
      location: "place7",
      phone: "777",
      hired: false,
      role_id: "7"
  },
  {
      actor: "actor8",
      location: "place8",
      phone: "888",
      hired: false,
      role_id: "8"
  },
  {
      actor: "actor9",
      location: "place9",
      phone: "999",
      hired: false,
      role_id: "9"
  },
  {
      actor: "actor10",
      location: "place10",
      phone: "101010",
      hired: false,
      role_id: "10"
  }
]

$role_data.each{|r| Role.create(r)}
$audition_data.each{|a| Audition.create(a)}
Audition.all.each{|a| a.update(role_id:Role.all.sample.id)}