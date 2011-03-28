require 'faker'

namespace :db do

  desc "Fill db with data"

  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Example Uer",
                 :email => "example@railsexample.org",
		 :password => "foobar",
		 :password_confirmation => "foobar")
   admin.toggle!(:admin) 

   99.times do |n|
     name = Faker::Name.name
     email = "example-#{n+1}@railsexample.org"
     password = "password"
     User.create(:name => name,
                 :email => email,
		 :password => password,
		 :password_confirmation => password)
  end

  end
end
