class Specialty < ActiveRecord::Base
  validates :name, :presence => { :message => "es requerido!"  }
  validates :name, :uniqueness => { :message => "ya ha sido agregado!"  }
end
