class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

  # :registerable
  devise :database_authenticatable, :encryptable, :encryptor => :md5
  #       :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :password, :password_confirmation, :remember_me

  def login
    read_attribute(:alias)
  end

  def login=(value)
    write_attribute(:alias, value)
  end

  def password=(new_password)
    @password = new_password
    #self.encrypted_password = password_digest(@password) if @password.present?
  end

  def encripted_password
    passwd
  end

  def password_salt
    'ashaks'
  end

  def valid_password?(password)
    Devise.secure_compare(password_digest(incoming_password), self.passwd)
  end

end
