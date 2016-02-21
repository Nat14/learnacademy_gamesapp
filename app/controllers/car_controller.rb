class CarController < ApplicationController
  def create
    if !params.has_key?(:make) || params[:make].strip.empty? ||
      !params.has_key?(:modelyear) || params[:modelyear].strip.empty?
      render "car/create"
    else
      newcar = Car.new( params[:make].strip.capitalize , params[:modelyear].strip, params[:description].strip )
      cookies[:car] = newcar.to_yaml
      redirect_to "/car/simulator"
    end
  end
  
  def simulator
    @car = YAML.load(cookies[:car])
  end
  
  def carlight
    @car = YAML.load(cookies[:car])
    @car.toggle_light
    cookies[:car] = @car.to_yaml
    redirect_to "/car/simulator"
  end
  
  def speedup
    @car = YAML.load(cookies[:car])
    @car.accelerate
    cookies[:car] = @car.to_yaml
    redirect_to "/car/simulator"
  end
  
  def slowdown
    @car = YAML.load(cookies[:car])
    @car.decelerate
    cookies[:car] = @car.to_yaml
    redirect_to "/car/simulator"
  end
  
  def parkingbrake
    @car = YAML.load(cookies[:car])
    if params[:parkingbrake] == "On"
      @car.set_parkingbrake(true)
    else
      @car.set_parkingbrake(false)
    end
    cookies[:car] = @car.to_yaml
    redirect_to "/car/simulator"
  end
  
end
