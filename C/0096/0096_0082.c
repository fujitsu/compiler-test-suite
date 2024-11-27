
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c,
           unsigned short d) {
	   res = ((a - b) / c) * d;
}

int main(void) {
  func(73,9,8,7);
  if (res == 56) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

