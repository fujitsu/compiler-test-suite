#include <stdio.h>
int g1,g2;
void foo(void);

int lto_sub_9()
{
   g1 = -2;
   g2 = 2;

   foo();
}

void foo()
{
    unsigned int u1 = *(unsigned int *)&g1;
    unsigned int u2 = *(unsigned int *)&g2;
    printf("%x \n", u1/u2 );
}
