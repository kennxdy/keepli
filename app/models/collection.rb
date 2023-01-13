class Collection < ApplicationRecord
  has_many :bookmarks, :dependent => :destroy
end
