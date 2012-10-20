use inc::Module::Install;

name          	'Text-Levenshtein-Damerau';
all_from      	'lib/Text/Levenshtein/Damerau.pm';
  
test_requires	'Test::Base'  => '0';  

WriteAll; 