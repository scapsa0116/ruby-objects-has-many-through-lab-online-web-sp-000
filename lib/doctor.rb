class Doctor 
  attr_reader :name

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
    appointments.collect do |appointment|
      appointment.patients
    end
  end

end 

