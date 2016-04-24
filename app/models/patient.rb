class Patient < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 20  }
  validates :last_name, presence: true, length: { maximum: 20  }
  validates :gender, presence: true
  validates :state, presence: true, length: { maximum: 20  }
  validates :city, presence: true, length: { maximum: 20  }
  validates :address, presence: true, length: { maximum: 20  }
  validates :cp, presence: true, length: { minimum: 5  }, length: { maximum: 5  }
  validates :email, presence: true, length: { maximum: 50  }
  validates :phone, presence: true, length: { maximum: 14  }
end
