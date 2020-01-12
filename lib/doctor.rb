class Doctor 
  attr_accessor :name

  @@all_doc = []

  def initialize(name)
    @name = name
    @@all_doc << self
   
  end

  def self.all
    @@all_doc
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
     
  end


  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  
  end

 

  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end

end 

