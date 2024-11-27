
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c,
           unsigned short d,
           unsigned short e) {
  res = (a + (e * 64)) + ((d - c) - (a + c) - e);
}

int main(void) {
  func(2,3,4,10,5);
  if (res == 317) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

