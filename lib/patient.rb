class Patient
    attr_accessor  :name
    @@all = []
    def initialize(name)
      @name= name
      @@all << self
    end
    def self.all
      @@all
    end
     def new_appointment(doctor,date)
    #   Song.all.select { |e| e.genre =  self} #select requires a condition
         Appointment.new(self,doctor,date)
     end
    def appointments
    #  Song.all.collect { |e| e.artist}  #map or collet return just values
       Appointment.all.select {|e| e.patient = self}
    end
end
