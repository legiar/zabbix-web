module Devise
  module Encryptors
    class Md5 < Base
      def self.digest(password, stretches, salt, pepper)
        str = [password, salt].flatten.compact.join
        Digest::MD5.hexdigest(str)
      end
    end
  end
end
