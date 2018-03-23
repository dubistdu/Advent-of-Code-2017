File.open("checksum.txt").map { |line| line.to_s.delete("\n").split(",") }.
map { |a| a.join.split("\t") }.
map { |a| a.map(&:to_i).max - a.map(&:to_i).min }.
sum
