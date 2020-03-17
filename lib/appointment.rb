require_relative './patient'
require_relative './doctor'
require 'pry'

class Appointment
    attr_accessor :date, :patient, :doctor

    @@all = []
    def initialize(patient, date, doctor) # ORDER MATTERS
        @date = date
        @patient = patient # patient instance
        @doctor = doctor # doctor instance
        @@all << self
    end

    def self.all
        @@all
    end

    
end

