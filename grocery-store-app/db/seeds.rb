statuses  = ['new hire', 'freshman', 'junior', 'senior']
departments = ['Sales', 'marketing','technology', 'hopspi', 'accounting']
roles = ['intern', 'assistant', 'employee', 'contract', 'manager', 'vice']
reviewss = ['awsome', 'very good', 'good', 'alright', 'whatever','bad', 'very bad' ]
# store has many departments, department has many employees, store has many reviews 
10.times do 
    Store.create(name: Faker::Movie.title, description: Faker::Company.industry, url: Faker::Internet.url, status: Faker::Company.buzzword, code: Faker::Currency.code, address: Faker::Address.community,
    city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, country: Faker::Address.country)
end

Store.all.each do |s|
    # creating the departments
    4.times do 
        Department.create(store_id: s.id, name: departments[rand(0..4)], description: "this is the description", code: departments[rand(0..4)])
    end

end


Department.all.each do |d|
    #make the employee 
    rand(3..7).times do
        Employee.create(first_name: Faker::Name.female_first_name, last_name: Faker::Name.female_first_name, 
            description: "this is the employee desc", role: roles[rand(0..5)], status: statuses[rand(0..3)], department_id: d.id)
    end
end

Department.all.each do |d|
    #make the employee 
    st_id = d.store.id
    d.employees.all.each do |e|
        Review.create(store_id: st_id, note: reviewss[rand(0..5)], employee_id: e.id)
    end
end