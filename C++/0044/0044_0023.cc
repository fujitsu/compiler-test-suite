#include <stdio.h>

class Class {
public:
  Class() {}
#ifdef ERR
private:
#endif
  Class(const Class&) {}
  ~Class() {}
};
int main() {
  try {
    throw Class();
  } catch (Class) {
    printf("ok\n");
  }
}

