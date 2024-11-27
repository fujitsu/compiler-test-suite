#include <stdio.h>

int foo(int a1, int a2) {

  int ret = 0;
  printf(""); 

  switch(a1) {
  case 1:   case 2:   case 3:
    ret = 1;
    break;
  case 4:   case 5:   case 6:
    ret = 2;
    break;
  case 7:   case 8:   case 9:
    ret = 3;
    break;
  case 10:  case 11:  case 12:
    ret = 4;
    break;
  case 13:  case 14:  case 15:
    ret = 5;
    break;
  case 16:  case 17:  case 18:
    ret = 6;
    break;
  case 19:  default:
    break;
  }

  switch(a2) {
  case 1:   case 2:   case 3:
    ret += 1;
    break;
  case 4:   case 5:   case 6:
    ret += 2;
    break;
  case 7:   case 8:   case 9:
    ret += 3;
    break;
  case 10:  case 11:  case 12:
    ret += 4;
    break;
  case 13:  case 14:  case 15:
    ret += 5;
    break;
  case 16:  case 17:  case 18:
    ret += 6;
    break;
  case 19:  default:
    break;
  }

  return ret;
}

int res[20] = {
  0, 2, 2, 2, 4, 4, 4, 6, 6, 6,
  8, 8, 8,10,10,10,12,12,12, 0
};

int main() {
  int i;
  for (i=0; i<19; ++i) {
    if (foo(i, i) != res[i]) {
      printf("NG : index = %d : value = %d not equal %d\n", i, foo(i, i), res[i]);
      return 0;
    }
  }
  puts("OK");
  return 0;
}
