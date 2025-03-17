#include <cctype>
#include <iostream>

const int ignore = 0;
const int upper = 1;
const int lower = 2;

void print(char *s, int how = -1);

int main() {
  print("Hello There\n", ignore);
  print("Hello There\n");
  print("Hello There\n", upper);
  print("Hello There\n", lower);
  print("Hello There\n");

  return 0;
}

void print(char *s, int how) {
  static int oldcase = ignore;

  if (how < 0) {
    how = oldcase;
  }

  while (*s) {
    switch (how) {
    case upper:
      std::cout << (char)toupper(*s);
      break;
    case lower:
      std::cout << (char)tolower(*s);
      break;
    default:
      std::cout << *s;
    }
    ++s;
  }
  oldcase = how;
}
