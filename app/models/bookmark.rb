class Bookmark < ApplicationRecord
  belongs_to :collection

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
