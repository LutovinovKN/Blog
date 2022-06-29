class News < ApplicationRecord
    belongs_to :author, class_name: "Admin"
    validates :title, presence: true
    validates :content, presence: true, length: { maximum: 2000 }
    validates :author, presence: true
end
