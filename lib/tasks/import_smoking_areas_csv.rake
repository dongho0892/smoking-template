require 'csv'
namespace :import_smoking_areas_csv do
  task :create_smoking_areas => :environment do
    CSV.foreach("public/smoking_areas.csv", :headers => true, :header_converters => :symbol) do |row|
      SmokingArea.create!(row.to_hash)
    end
  end
end