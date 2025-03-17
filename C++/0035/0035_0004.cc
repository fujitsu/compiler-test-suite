#include <cstdlib>
#include <iostream>

int x;
int &P = x;

void Func() { P = 1; }

class array {
  char *p;

public:
  array(int num);
  char &put(int i);
};

char &array::put(int i) { return p[i]; }

int main() {
  x = 5;
  if (P == 5) {
    std::cout << "ok"
              << "\n";
  } else {
    std::cout << "ng"
              << "\n";
  }
  return 0;
}
