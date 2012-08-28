module SeedDumper
  
  class Writer
    
    def self.write_data(klass_name, records)
      seed_file_name = "#{Rails.root}/db/seeds/#{klass_name.tableize}.rb"
      seed_file_dir = File.dirname(seed_file_name)
      FileUtils.mkdir_p(seed_file_dir) unless File.exists?(seed_file_dir)
      
      puts "Writing #{seed_file_name}."
      File.open(seed_file_name, 'w') do |f|
        records.each { |record| f.puts(record) }
      end
      
    end
    
  end
  
  
end