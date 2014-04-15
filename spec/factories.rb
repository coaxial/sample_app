FactoryGirl.define do
  factory :user do
    name                  'Pierre-Yves Poujade'
    email                 'py@example.com'
    password              'foobar'
    password_confirmation 'foobar'
  end
end