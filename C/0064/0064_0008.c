#include <stdio.h>
int foo();
int g1,g2;
int main()
{
   g1 = -2;
   g2 = 2;

   foo();
}

int foo()
{
    unsigned int u1 = *(unsigned int *)&g1;
    unsigned int u2 = *(unsigned int *)&g2;
    printf("%x \n", u1/u2 );
}
