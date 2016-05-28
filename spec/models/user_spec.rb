require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do

      it "should not be valid without name or lastname" do
        @user = build(:user, firstname: "", lastname: "")
        expect(@user.save).to be false
      end
      
        it "should not be valid if username is empty" do
        @user = build(:user, username: "")
        expect(@user.save).to be false
      end
      
    it "should not be valid if username has less than 6 chars" do
        @user = build(:user, username: "HHHHH")
        expect(@user.save).to be false
      end
      

        

     
      
    end

    context "with valid attributes" do

      it "should be valid" do
        @user = build(:user)
        expect(@user.save).to be true
      end

    end

  end

end