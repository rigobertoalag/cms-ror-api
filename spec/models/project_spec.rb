require 'rails_helper'

RSpec.describe Project, type: :model do

  describe 'Campos del proyecto con validacion' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(3) }

    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_least(10) }

    it { should validate_presence_of(:config) }
  end

  describe "Caso satisfactorio" do 
    subject {Project.new(title:"Anything", description:"Lorem ipsum", config:"lorem")}

    it "Guarda los datos si todo esta correcto" do 
      expect(subject).to be_valid
    end

  end

  describe "Caso erroneo" do 
    subject {Project.new(title: "a",description: "Lorem",config: "")}

    it "Guarda los datos si todo esta correcto" do 
      expect(subject).to be_invalid
    end
  end

end
