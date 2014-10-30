require 'spec_helper'

describe NUSMods do

  before :all do
    @nm = NUSMods::Client.new
  end

  describe "#get_module_codes" do
    it "should return an array if the requested resource exist" do
      resp = @nm.get_module_codes
      expect(resp.class).to eq(Array)
    end
  end

  describe "#get_module_codes_with_names" do
    it "should return a Hash if the requested resource exist" do
      resp = @nm.get_module_codes_with_names
      expect(resp.class).to eq(Hash)
    end
  end

  describe "#get_faculty_departments" do
    it "should return a Hash if the requested resource exist" do
      resp = @nm.get_faculty_departments
      expect(resp.class).to eq(Hash)
    end
  end

  describe "#get_lesson_types" do
    it "should return a Hash if the requested resource exist" do
      resp = @nm.get_lesson_types
      expect(resp.class).to eq(Hash)
    end
  end

  describe "#get_module_details" do
    it "should return a Hash if the requested resource exist" do
      resp = @nm.get_module_details("CS1010")
      expect(resp.class).to eq(Hash)
    end
  end

  # describe "#get_modules" do
  #   it "should return a Array if the requested resource exist" do
  #     resp = @nm.get_modules
  #     expect(resp.class).to eq(Array)
  #   end
  # end

end
