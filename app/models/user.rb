class User < ApplicationRecord
  has_many :user_arquivo
  has_many :arquivos
  has_many :arquivos, through: :user_arquivo
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
