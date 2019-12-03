# Ruby-Caesar-Cipher

This is a Caesar Cipher built in Ruby as practice to help cement more of the Ruby language in my head, as well as the help me think more algorithmically.

# How-To-Use

The Caesar Cipher is based on a very old method of obfuscating messages. It takes a number, and shifts each letter in your message that many letters to the right alphbetically.

For Example
```
string = 'What a string!'
puts caesar_cipher(string, 100)
```
Will output
```
'Sdwp w opnejc!'
```

It also has a built in unscramble function, as long as you know the original number the string was shifted by

For Example
```
string = 'Sdwp w opnejc!'
puts caesar_cipher(string, 100, true)
```
Will output
```
'What a string!'
```

# Acknowledgements

The specifications for this project came from TheOdinProject. I got help from the Ruby Docs, as well as the ever knowing and often wrong Stack Overflow.

# About-Me

My name is Gwen, and as of writing this I'm involved in the Microverse school, training to be a developer.

[My Github](https://github.com/HeyItsGwen)
