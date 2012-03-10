require 'minitest/autorun'

describre Key, "Describe how keys shoudl be created" do
  
  before do
    Key.new
  en

  describre "When I want to create without name" do
    it "showld have a name" do
      key.name = ""
      key.secret = "password"
      Key.save.must_be false
    end
 

    it "When I want to create one witout  key" do
      key.name = "bank"
      key.secret = ""
      key.save.must_be false
    end

    it "when I send a key with name and secret" do
       key.name = "test"
       key.secret = "password"
       key.save.must_be true
    end
  end


end
