FactoryBot.define do
  factory :card do
    position { 1 }
    text { "MyString" }
    flipped { false }
    match_id { 1 }
  end
end
