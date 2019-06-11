class Patient
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

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    self.appointments << appointment
    appointment
  end

  def doctors
    doctors = []
    self.appointments.each do |appointment|
      doctors << appointment.doctor
    end
    doctors
  end

end
