require_relative './spec_helper'
require_relative '../parrot.rb' # Code your solution in this file

<<<<<<< HEAD
def parrot(name="Squawk!")
  puts name
  return name
=======
def parrot(name = "Squawk")
  puts "{name}!"
>>>>>>> 5a73bcd92f31382467676d9c3d0869012657dcf4
end

describe 'parrot' do
  it 'should output "Squawk!" to the terminal when called without any arguments' do
    expect($stdout).to receive(:puts).with("Squawk!")
    parrot
  end

  it 'should return the default phrase, "Squawk!" when called without any arguments' do
    phrase = parrot
    expect(phrase).to eq("Squawk!")
  end

  it 'should output the given phrase when called with an argument' do
    expect($stdout).to receive(:puts).with("Pretty bird!")
    parrot("Pretty bird!")
  end

  it 'should return the given phrase when called with an argument' do
    phrase = parrot("Pretty bird!")

    expect(phrase).to eq("Pretty bird!")
  end
end
