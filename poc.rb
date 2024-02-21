

pc = 0

loop do
  file = File.binread('test.ch8', 2, pc)

  break if file.nil?

  high_byte, low_byte = file.codepoints

  combined = (high_byte << 8) | low_byte

  puts "0x%02x" % combined
  
  pc += 2
end

puts pc
