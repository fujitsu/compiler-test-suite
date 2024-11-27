#include <stdio.h>

#define ALIGN 4
#pragma align ALIGN (ex1,ex2)

int  ex1;
static int ex2;

int main(void)
{
   int i = (int )&ex1;
   if( (i % ALIGN) != 0 ) puts("NG1");
   i = (int )&ex2;
   if( (i % ALIGN) != 0 ) puts("NG2");
   puts("PASS");
}
