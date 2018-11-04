def is_unique(input_string):
	if input_string:
		temp_dict = {}
		for char in input_string:
			if temp_dict.get(char):
				return False
			else:
				temp_dict[char] = 1
		return True
	return False
