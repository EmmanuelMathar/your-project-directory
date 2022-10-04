require "password_checker"

RSpec.describe PasswordChecker do
    it "check a 8 chars password" do
        password_checker = PasswordChecker.new
        expect(password_checker.check("fhgrt12345")).to eq true
    end
    
    context "when password is less than 8" do
    it "falls" do 
        password_checker = PasswordChecker.new
        expect{ password_checker.check("gh34567") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
end 