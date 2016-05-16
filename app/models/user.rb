class User < ApplicationRecord
  has_one :group
  has_many :version
end
