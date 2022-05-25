require 'docking_station'

describe DockingStation do
  let (:bike) {Bike.new}
  
  it { is_expected.to respond_to :release_bike }
  
  it 'release working bike' do
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  
  describe '#dock' do
    it 'docks a bike' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returns docked bikes' do
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
    
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end


