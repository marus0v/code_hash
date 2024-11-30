require 'digest'

puts "Какую фразу шифруем?" # вопрос?

phrase = STDIN.gets.chomp

puts "Как шифруем? Выберите вариант:" # вопрос?
puts "1 - MD5"
puts "2 - SHA1"

choice = gets.to_i

case choice
when 1
  p_md5 = Digest::MD5.new
  p_md5.update phrase
  puts p_md5.hexdigest
when 2
  p_sha1 = Digest::SHA256.new
  p_sha1.update phrase
  puts p_sha1.hexdigest
end