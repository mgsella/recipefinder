require 'rails_helper'

RSpec.describe Recipe, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:food) }

    it { should belong_to(:preparation) }

    it { should belong_to(:cuisine) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
