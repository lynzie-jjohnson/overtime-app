@user = User.create(email: "test@test.com",
                    password: "123456",
                    password_confirmation: "123456",
                    first_name: "John",
                    last_name: "Son",
                    phone: "8016634421")      

puts "1 User Created"

AdminUser.create(email: "admin@test.com",
                 password: "123456",
                 password_confirmation: "123456",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "8016634421")      

puts "1 Admin User Created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
  end
  
  puts "100 audit logs have been created"