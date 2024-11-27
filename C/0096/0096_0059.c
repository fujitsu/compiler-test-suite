
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c,
           unsigned short d,
           unsigned short e) {
	   res = a / ((b + c) * (d + e));
}

int main(void) {
  func(300,4,6,2,3);
  if (res == 6) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

