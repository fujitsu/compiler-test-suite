#include <stdio.h>
int foo2() {
  int p = 20;
  int pp = 10;

  asm __volatile("mov %1, %0\n\t"
		 :"=r"(p)
		 :"0"(p));



  printf("p = %d\n", p);
  return 0;
}


int main() {
  foo2();
}
