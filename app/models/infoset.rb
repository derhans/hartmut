class Infoset < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :article
end
