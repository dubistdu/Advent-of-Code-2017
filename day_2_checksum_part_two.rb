num_array =
File.open("checksum.txt").map { |line| line.chomp.split("\t") }.
map { |a| a.map(&:to_i) }

puts num_array.map { |n|
  i = 0
  until n.select { |a| a % n[i] == 0 && a > n[i] }.count == 1
    i += 1
  end
  n.select { |a| a % n[i] == 0 && a > n[i] }.
  first / n[i]
}.
sum
