

#include <setjmp.h>      
#include <stdio.h>
jmp_buf g_3;
static int a_3() {longjmp(g_3,1);}
static void b_3(int* x) {if (setjmp(g_3))return;*x = 10;a_3();}
#ifdef ORIGINAL
int main() {int a = 1; b(&a); printf("%d\n", a); return 0;}
#else
void sub3()
{
  int a = 1;
  b_3(&a);
  printf("%d\n", a);
}
#endif
