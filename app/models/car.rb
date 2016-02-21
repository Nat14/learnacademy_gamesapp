class Car
   
    def initialize(make, modelyear, description)
        @make = make
        @modelyear = modelyear
        @description = description
        @light = false
        @speed = 0
        @parkingbrake = false
    end
    
    def get_car
        return @modelyear + " " + @make
    end
    
    def get_description
        @description
    end
    
    def toggle_light
       @light = !@light 
    end
    
    def light
       @light 
    end
    
    def show_speed
        @speed
    end
    
    def accelerate
       @speed += 10 if @parkingbrake == false
    end
    
    def decelerate
        @speed <= 10 ? @speed = 0 : @speed -= 10
    end
    
    def set_parkingbrake(value)
        @parkingbrake = value
    end
    
    def get_parkingbrake
        @parkingbrake
    end
end