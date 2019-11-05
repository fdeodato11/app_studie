class UserArquivo < ApplicationRecord
  belongs_to :arquivo
  belongs_to :user
end
