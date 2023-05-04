class ValidatePassword
  def initialize(password)
    @password = password
  end
  
  def perform
    validation = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[\!@#$%&*+=:;?<>])(?=.*[0-9])(?!.*(.)\1\1).{6,24}$/
    if (@password.match(validation))
      return true
    else
      return false
    end
  end
end
