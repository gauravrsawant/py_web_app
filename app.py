def is_palindrome(s):
    # Remove non-alphanumeric characters and convert to lowercase
    s = ''.join(c.lower() for c in s if c.isalnum())
    return s == s[::-1]

# Test the function
input_string = "BOB"
if is_palindrome(input_string):
    print(f"'{input_string}' is a palindrome!")
else:
    print(f"'{input_string}' is not a palindrome.")
