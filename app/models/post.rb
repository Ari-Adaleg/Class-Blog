class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    has_and_belongs_to_many :tags

    validates :email, uniqueness: true
    validates :title, presence: true
    validates :article, presence: true

end
