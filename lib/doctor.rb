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
    Appointment.all.select do |appointment|
      appointment.doctor == self
     end
  end


  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  
  end

 

  def patients
    Appointments.collect do |appointment|
      appointment.patients
    end
  end

end 

