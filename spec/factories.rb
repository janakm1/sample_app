Factory.define :user do |user|

  user.name		"jmd"
  user.email		"jmuralidha@yahoo.com"
  user.password		"foobar"
  user.password_confirmation "foobar"

end

Factory.sequence :email do |n|
  "person-#{n}@yahoo.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end

