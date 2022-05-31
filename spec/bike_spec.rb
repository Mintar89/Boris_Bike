require 'bike'

describe Bike do
  
  it { is_expected.to respond_to :working? }

  describe "report_broken" do
    it "reports a bike as broken when returning" do
      expect(subject.report_broken).to be true
    end
  end



end