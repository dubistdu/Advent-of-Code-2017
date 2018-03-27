#   65 64 63 62 61 60 59 58 57
#   66 37 36 35 34 33 32 31 56
#   67 38 17 16 15 14 13 30 55
#   68 39 18  5  4  3 12 29 54
#   69 40 19  6  1  2 11 28 53
#   70 41 20  7  8  9 10 27 52
#   71 42 21 22 23 24 25 26 51
#   72 43 44 45 46 47 48 49 50
#   73 74 75 76 77 78 79 80 81

# each square right corner ends with odd power nums 1**2 3**2 5**2 7**2 9**2
# odd_num -1 /2 is shortest step to access from where each corner lies (end_num)
# also each row expands (8 * n) + previous number

# how to ger beginning of the square number (number abover beginning)
# ex) 81? answer= 50
# beginning_num = end_num + 1 = (root - 1) * 4
# def spiral_memory(input)
#   root = Math.sqrt(n).ceil
#   root.odd? ? root : root = root + 1
#   end_num = root ** 2
#   difference = end_num - n
#   end_num_step = root - 1
#   answer = end_num_step - difference % end_num_step

# def spiral_memory(n)
#   root = Math.sqrt(n).ceil
#   root.odd? ? root : root += 1
#   root - 1 - (root**2 - n) % (root - 1)
# end

def spiral_memory(n)
  root = Math.sqrt(n).ceil
  root += 1 if root.even?
  root - 1 - (root**2 - n) % (root - 1)
end
