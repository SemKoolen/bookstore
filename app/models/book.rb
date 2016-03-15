class Book < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true, uniqueness: { case_sensitive: false }
end
