
#include <stdio.h>
#include <setjmp.h>

jmp_buf            je_buf;
jmp_buf         *  je_buf_ptr = &je_buf;
int main()
{
  printf("### jmp_buf_01 ### start \n");

  if(setjmp(je_buf_ptr) == 0) {
    printf("   then 1 \n");
    longjmp(je_buf_ptr, 1);
    printf("   then 2 \n");
  } else {
    printf("   else \n");
  }

  printf("### jmp_buf_01 ### end \n");
}
