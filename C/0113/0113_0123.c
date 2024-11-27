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
  a = -9; k += movrgez(); i+=COUNT;
  a = -8; k += movrgz();  i+=COUNT;
  a =  7; k += movrlez(); i+=COUNT;
  a =  6; k += movrlz();  i+=COUNT;
  a =  1; k += movrz();   i+=COUNT;
  a =  0; k += movrnz();  i+=COUNT;
  printf("%s\n", (k == i)?"ok":"ng");
}
