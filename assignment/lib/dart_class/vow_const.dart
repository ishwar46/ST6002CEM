void main() {
  String input = "Ishwar, Chaudhary!";
  separateVowelsAndConsonants(input);
}

void separateVowelsAndConsonants(String input) {
  String vowels = '';
  String consonants = '';

  for (int i = 0; i < input.length; i++) {
    String char = input[i].toLowerCase();
    if ('aeiou'.contains(char)) {
      vowels += input[i];
    } else if (char != ' ' &&
        char.replaceAll(RegExp(r'[^\w\s]'), '').isNotEmpty) {
      consonants += input[i];
    }
  }

  print("Vowels: $vowels");
  print("Consonants: $consonants");
}
