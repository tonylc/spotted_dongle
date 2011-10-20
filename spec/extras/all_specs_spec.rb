require 'spec_helper'

describe AllSpecs do
  [[:controllers, "app/controllers/**/*.rb", AllSpecs::EXCLUDED_CONTROLLER_FILES],
  [:extras, "app/extras/**/*.rb", AllSpecs::EXCLUDED_EXTRA_FILES],
  [:helpers, "app/helpers/**/*.rb", AllSpecs::EXCLUDED_HELPER_FILES],
  [:models, "app/models/**/*.rb", AllSpecs::EXCLUDED_MODEL_FILES]].each do |file_type, dir, excluded_files|
    it "shoud have corresponding specs for #{file_type}" do
       files = Dir.glob(dir)
       non_specs = []
       files.select do |f|
         non_specs << f unless File.exist?(f.sub(/^app/, "spec").sub(/\.rb$/, "_spec.rb"))
       end
       non_specs = non_specs - excluded_files
       if !non_specs.empty?
         non_specs.each do |f|
           p "unspec'd file #{f}"
         end
       end
       non_specs.should be_empty
    end
  end
end
