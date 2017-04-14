class User < ApplicationRecord
  has_secure_password
  # validate :password_and_confirmation_match

  # def password=(password)
  #   self.password_digest = salt_and_hash(password)
  # end

  # private
  #
  # def password_and_confirmation_match
  #   if password_comfirmation && password_comfirmation != password
  #     errors.add(:password, 'must match confirmation')
  #   end
  # end
end
