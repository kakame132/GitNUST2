# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def sample_mail_preview
    a=User.create(first_name:"Vy",last_name:"nguyen",email:"khanh.nguyen2899oisp@hcmut.edu.vn",password:"asdasdads")
    UserMailer.sample_email(a)
  end

end
