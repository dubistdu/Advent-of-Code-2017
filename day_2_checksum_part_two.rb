num_array =
File.open("checksum.txt").map { |line| line.to_s.delete("\n").split(",") }.
map { |a| a.join.split("\t") }.
map { |a| a.map(&:to_i) }

num_array.map { |n|
  i=0
  until  n.select {|a| a % n[i] == 0 && a > n[i]}.count == 1
  i += 1
  end
  n.select { |a| a % n[i] == 0 && a > n[i]}.
  first/n[i]
  }.
  sum
