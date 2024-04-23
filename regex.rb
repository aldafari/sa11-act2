def extract_hashtags(text)
  pattern = /(?<=#)\w+/
  hashtags = text.scan(pattern)
  hashtags.flatten
end

def valid_password?(password)
  pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,16}$/
  password.match?(pattern)
end

def find_numbers(text)
  pattern = nil
  text.scan(pattern)
end

def valid_date?(date)
  pattern = nil
  date.match?(pattern)
end

def parse_log_entry(log)
  pattern = nil
  match = log.match(pattern)
  [match[1], match[2]] if match
end

#p extract_hashtags("Love this #beautiful day! #sunny")
p valid_password?("Passw0rd")
#p valid_password?("pass")
#p find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")
#p valid_date?("2023-03-15")
#p valid_date?("15-03-2023")
#log_entry = "ERROR: Disk space low"
#p parse_log_entry(log_entry).inspect
