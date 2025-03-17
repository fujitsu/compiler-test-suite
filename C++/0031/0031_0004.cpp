#include <stdio.h>

class ABC {
  int aaa;
  int bbb;
public:
  ABC():aaa(100),bbb(200) {
  }

  void func () {
    printf("%d:%d\n",aaa,bbb);
  }
};

int main() {
  ABC a;

  a.func();
}
