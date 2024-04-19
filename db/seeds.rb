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
    phone_number = "1289#{index + 1}"
    birth_date = "0#{index+1}/#{index+6}/#{index+2000}"
    gender = ['Male', 'Female', 'Other'].sample
    address = "Address #{index + 1}, Amravati, India" 

    receptionist = User.find_by(role: 'receptionist')
    receptionist.patients.create!(
        user_id: 1,
      name: name,
      phone_number: phone_number,
      birth_date: birth_date,
      gender: gender,
      address: address
    )

    doctor = User.find_by(role: 'doctor')
    doctor.patients.create!(
        user_id: 1,
      name: name,
      phone_number: phone_number,
      birth_date: birth_date,
      gender: gender,
      address: address
    )
end

puts 'seed daya success'