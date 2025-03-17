#include <stdio.h>

int test1();
int test2();

int main() {
  int a = 0;
  int b = 0;

  printf("1");
  printf("2");
  printf("3");
  printf("4");
  printf("5");
  printf("6");
  printf("7");
  printf("8");
  printf("9");
  printf("0");

  test1();
  test2();
} 


int test1() {
  int i = 0;
  int j = 0;

  for (i = 0; i < 100; ++i) {
    j = j + 1;
  }
  return j;
}

int test2() {
  return 2000;
}
