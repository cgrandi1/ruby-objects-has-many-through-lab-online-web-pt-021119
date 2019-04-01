class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def appointments 
    Appointment.all.select do |appointments|
      appointments.patient == self
    end
  end 
  
   def doctors 
    Appointment.all do |song|
      song.artist
    end 
  end 

end 