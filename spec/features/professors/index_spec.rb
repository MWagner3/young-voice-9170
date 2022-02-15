require 'rails_helper'

RSpec.describe 'professor index' do

  it 'lists all the professors with their attributes' do
    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
    lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")
    professors = [snape, hagarid, lupin]

    visit "/professors"
    professors.each do |professor|
      expect(page).to have_content(professor.name)
      expect(page).to have_content(professor.age)
      expect(page).to have_content(professor.specialty)
    end
  end
end
