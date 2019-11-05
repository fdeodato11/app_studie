class Arquivo < ApplicationRecord
    has_many :arquivo_licensas
    has_many :user_arquivo
    has_many :user, through: :user_arquivo
    has_many :licensas, through: :arquivo_licensas
end
