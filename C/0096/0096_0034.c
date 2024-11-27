
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b) {
	   res = a - b;
}

int main(void) {
  func(10,5);
  if (res == 5) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

