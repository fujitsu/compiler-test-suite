
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c) {
	   res = (a + b) / c;
}

int main(void) {
  func(10,6,8);
  if (res == 2) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

