class Licensa < ApplicationRecord
    has_many :arquivo_licensas
    has_many :arquivos, through: :arquivo_licensas
end
