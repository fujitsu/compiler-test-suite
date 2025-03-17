#include <stdio.h>
template<class Type>
Type foo(Type t) {
  int ret = 0;
  switch(t) {
  case 1:  case 2:  case 3:
    ret = 1;
    break;
  case 4:  case 5:  case 6:
    ret = 2;
    break;
  case 7:  case 8:  case 9:
    ret = 3;
    break;
  case 10: case 11: case 12:
    ret = 4;
    break;
  case 13: case 14: case 15:
    ret = 5;
    break;
  case 16: default:
    break;
  }
  return (Type)ret;
}

int main() {
  if (foo((short)1) != (short)1) {
    puts("NG");
  }
  if (foo(1) != 1) {
    puts("NG");
  }
  puts("OK");
  return 0;
}
