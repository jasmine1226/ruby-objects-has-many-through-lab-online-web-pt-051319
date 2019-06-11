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

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    self.appointments << appointment.patient
    appointment
  end

  def patients
    patients = []
    self.appointments.each do |appointment|
      puts appointment.patient
      patients << appointment
    end
    patients
  end
end
