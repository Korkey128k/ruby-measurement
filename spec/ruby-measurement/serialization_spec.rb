require 'spec_helper'
require 'yaml'

RSpec.describe "Serialization of Measurement objects" do

  describe 'Load Measurement object from YAML' do
    measure = Measurement.parse('1 in')
    yamled_obj = ::YAML.load(::YAML.dump(measure))

    expect( yaml_obj === measure )
  end

end
