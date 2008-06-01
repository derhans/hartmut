class Address < ActiveRecord::Base
  has_many :vendors
  has_many :hospitals

  validates_presence_of :street, :message =>  "Bitte Straße eingeben"
  validates_presence_of :nr, :message =>      "Bitte Hausnummer eingeben"
  validates_presence_of :email , :message =>  "Bitte Email Adresse eingeben"
  validates_presence_of :zip, :message =>     "Bitte Postleitzahl eingeben"
  validates_presence_of :country, :message => "Bitte Land eingeben"
  validates_presence_of :city, :message =>    "Bitte Ort eingeben"
  validates_presence_of :tel, :message =>     "Bitte Telefonnummer eingeben"

  validates_numericality_of :zip, :message => "Postleitzahl muss numerisch sein"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,:message => "Bitte gültige Adresse eingeben"   


end
