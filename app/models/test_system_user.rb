class TestSystemUser < User
    scope :teachers, -> {where(accesslevel: 2)}
    scope :students, -> {where(accesslevel: 2)} 
    
    validates :firstname, length: {minimum: 1}
    validates :lastname, length: {minimum: 1}   
    validates :login, length: {in: 5..12}
    validates :accesslevel, 
      numericality: {only_integer: true}, 
      presence: true, inclusion: {in: [1, 2, 4]}
    validates :login, uniqueness: true;      
   
end
