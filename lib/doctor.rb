require_relative './appointment'
require_relative './patient'

require 'pry'

class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        appointments.collect {|appt| appt.patient}
    end
end

# ferris = Patient.new("Ferris Bueller")
# doogie = Doctor.new("Doogie Howser")
# new_appt = Appointment.new(ferris, 'January 1st, 1989', doogie)
# new_appt2 = Appointment.new(ferris, 'Feburary 1st, 1989', doogie)
# binding.pry
# puts 's'