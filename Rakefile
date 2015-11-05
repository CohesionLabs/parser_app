
task :default do
	puts "rake run_tests runs tests."
	puts "rake parse_files runs the outputs."
end

task run_tests: %w[person_test] 

task :person_test do 
  ruby "./tests/test_person.rb"
end