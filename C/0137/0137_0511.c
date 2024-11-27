#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
long long int a;
a= (-1LL) + (-1LL);
if (a == -2LL) printf("kaimk2043-(1) ok\n");
          else printf("kaimk2043-(1) ng %x %x\n"
                      ,*(int *)&a , *(((int *)&a)+1));
exit (0);
}
