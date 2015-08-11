class Article < ActiveRecord::Base
  validates :title, presence: true,
            length: { minimum: 5 }

  validates :content, length: { minimum: 5 }
end
