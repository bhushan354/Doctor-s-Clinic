User.create!(
  email: 'receptionist1@example.com',
  password: 'password',
  role: 'receptionist'
)

User.create!(
  email: 'doctor1@example.com',
  password: 'password',
  role: 'doctor'
)

5.times do |index|
    name = "Name#{index + 1}" 
    phone_number = "12#{index + 3}95#{index + 2}142#{index + 1}"
    birth_date = "0#{index+1}/#{index+6}/#{index+2000}"
    gender = ['Male', 'Female'].sample
    address = "Sector #{index + 1}, Amravati, India" 

    receptionist = User.find_by(role: 'receptionist')
    receptionist.patients.create(
      user_id: 1,
      name: name,
      phone_number: phone_number,
      birth_date: birth_date,
      gender: gender,
      address: address,
      created_at: Time.now - index.days,
      updated_at: Time.now - index.days
    )

end

puts 'seed data success'