# ENCRYPTION

# 1. Receive string input and assign to a variable.
# 2. Starting at index[0], shift letters in string forward by one letter each.
#   a. Analyze character at index[n]:
#     (1) Is character a "z"? If true shift forward to "a"
#     (2) Is character anything other than a blank space? If true shift forward by one letter.
#     (3) In the absence of specfic instructions, blank spaces will be left alone.
#   b. Go to next index and repeat steps 2a(1)-(3).
# 3. Return "encrypted" string.

def encrypt(secret_password)
  index = 0
  
  while index < secret_password.length
    if secret_password[index] == "z"
      secret_password[index] = "a"
    elsif secret_password[index] != " "
      secret_password[index] = secret_password[index].next
    end
    
    index += 1
  end
  
  secret_password
  
end 

# encrypt("peanut")
# encrypt("foxtrot")



# DECRYPTION

# alphabet_string = "abcdefghijklmnopqrstuvwxyz"

# 1. Receive string input and assign to a variable.
# 2. Starting at index[0], shift letters in string backward by one letter each.
#   a. Analyze character at index[n]:
#     (1) Is character an "a"? If true shift backward to "z"
#     (2) Is character anything other than a blank space? If true, continue...
#     (3) Compare character in index[n] to alphabet_string and find matching letter.
#     (4) Retrieve index of letter matched in 2a(3)
#     (5) Take letter assciated with [index-1] and add to new variable.
#     (6) In the absence of specfic instructions, blank spaces will be left alone.
#   b. Go to next index and repeat steps 2a(1)-(6).
# 3. Return "decrypted" string.

def decrypt(secret_password)
  i = 0
  decrypted_password = ""

  while i < secret_password.length
    if secret_password[i] != " "
      alphabet = "abcdefghijklmnopqrstuvwxyz"
      letter = secret_password[i]
      output = alphabet.index(letter)
      result = alphabet[output-1]
      decrypted_password << result
    elsif secret_password[i] == " "
      decrypted_password << " "
    end
    
    i += 1
  end
    
  decrypted_password
    
end

# p decrypt("qfbovu")
# p decrypt("gpy uspu")
# p decrypt("afe")

# p decrypt(encrypt("swordfish"))


#DRIVER CODE 

# Asks secret agent if they want to encrypt or decrypt a password
puts "Hello, Agent. Would you like to encrypt or decrypt a password?"
answer = gets.chomp

# Ask for password
puts "Please enter your password:"
secret_password = gets.chomp 

# Conduct encryption or decryption 
if answer.downcase == "encrypt"
  puts encrypt(secret_password)
else
  puts decrypt(secret_password)
end
  
# Exit 
puts "Goodbye."
