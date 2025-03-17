#include <stdio.h>

void Func01() {}
void Func02() {}
void Func03() {}
void Func04() {}
void Func05() {}
void Func06() {}
void Func07() {}
void Func08() {}
void Func09() {}
void Func10() {}
void Func11() {}
void Func12() {}
void Func13() {}
void Func14() {}
void Func15() {}
void Func16() {}
void Func17() {}
void Func18() {}
void Func19() {}
void Func20() {}
void Func21() {}
void Func23() {}
void Func24() {}

void Func00() {

  Func01();

  try {
    Func02();

    try {
      Func03();
    } catch (char c) {
      Func04();
    } catch (int) {
      Func05();
    }

    Func06();

    try {
      Func07();
    } catch (char) {
      Func08();

      try {
        Func09();
      } catch (...) {
        Func10();
      }

      Func11();
    }

    Func12();

  } catch (char*) {
    Func13();
  } catch (int* ip) {

    Func14();

    try {
      Func15();
    } catch (char) {
      Func16();
    }

    try {
      Func23();
    } catch (char) {
      Func24();
    }

    Func17();
  }

  Func18();

  try {
    Func19();
  } catch (double) {
    Func20();
  }

  Func21();
}

void Func22() {
  try{} catch(...) {}
}
int main() {
  printf("ok\n");
}
