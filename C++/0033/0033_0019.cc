#include <stdio.h>
int work = 0;
unsigned char x = 2;
void func1(unsigned char x);
void func2(unsigned char x) {
  if (x == 2)
    ;
  else
    work++;
}
int main() {
#pragma omp parallel
  func2(x);

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");

  return 0;
}
