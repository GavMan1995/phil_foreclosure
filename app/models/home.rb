class Home < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Home.create! row.to_hash
    end
  end
end
