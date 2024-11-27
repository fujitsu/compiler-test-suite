
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c,
           unsigned short d,
           unsigned short e) {
	   res = a / ((b - c) * (d - e));
}

int main(void) {
  func(300,13,8,9,6);
  if (res == 20) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

