
#include <stdio.h>
#include <setjmp.h>
int main()
{
  jmp_buf       je_buf;

  printf("### jmp_buf_10 ### start \n");

  if(setjmp(je_buf) == 0) {
    printf("   then 1 \n");
    longjmp(je_buf, 1);
    printf("   then 2 \n");
  } else {
    printf("   else \n");
  }

  printf("### jmp_buf_10 ### end \n");
}
