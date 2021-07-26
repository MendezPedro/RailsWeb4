class Post < ApplicationRecord
    validates :name, :description, :status, presence: true
    enum status: [:propuesta, :en_progreso, :terminado]
end
