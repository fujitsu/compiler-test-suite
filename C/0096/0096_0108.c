
#include <stdio.h>

unsigned short res;
void func (unsigned short a,
           unsigned short b,
           unsigned short c,
           unsigned short d,
           unsigned short e) {
  res = a - (e * 64) + (d +((a + c) + (b + c)));
}

int main(void) {
  func(2,3,4,10,1);
  if (res == 65497) {
    printf("test OK\n");
  } else { 
    printf("test NG res = %d\n",res);
  }
  return 0;
}

