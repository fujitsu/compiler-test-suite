#include <stdio.h>

#define COUNT 9

unsigned int a;
static int movrgez() {
  return ((int)a < 0)? COUNT : 0;
}
static int movrgz() {
  return ((int)a <= 0)? COUNT : 0;
}
static int movrlez() {
  return ((int)a > 0)? COUNT : 0;
}
static int movrlz() {
  return ((int)a >= 0)? COUNT : 0;
}
static int movrz() {
  return ((int)a != 0)? COUNT : 0;
}
static int movrnz() {
  return ((int)a == 0)? COUNT : 0;
}
int main() {
  int k = 0, i = 0;
  a = 0xffffffff; k += movrgez(); i+=COUNT;
  a = 0xffffffff; k += movrgz();  i+=COUNT;
  a = 0x7fffffff; k += movrlez(); i+=COUNT;
  a = 0x7fffffff; k += movrlz();  i+=COUNT;
  a = 0xffffffff; k += movrz();   i+=COUNT;
  a = 0x7fffffff; k += movrz();   i+=COUNT;
  a = 0x00000000; k += movrnz();  i+=COUNT;
  printf("%s\n", (k == i)?"ok":"ng");
}
