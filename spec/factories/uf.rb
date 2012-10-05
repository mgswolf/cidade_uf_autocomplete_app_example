# -*- encoding : utf-8 -*-
require 'factory_girl'

FactoryGirl.define do
  factory :uf do
    sequence(:nome) { |n| "UF #{n}" }
    sequence(:sigla) { |n| "S#{n}" }
  end
end
