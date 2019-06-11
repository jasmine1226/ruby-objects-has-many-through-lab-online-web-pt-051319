class  Doctor
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    self.appointments << appointment
    appointment
  end

  def patients
    patients = []
    self.appointments.each do |appointment|
      puts appointment
      patients << appointment.patient
    end
    patients
  end
end
