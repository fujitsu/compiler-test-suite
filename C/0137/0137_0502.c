#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
long long int a;
unsigned long long int b;
long double   r16;
double        r8;
float         r4;

r16=10.0;
r8=10.0;
r4=10.0;

a=r16;
     if (a==10ll) printf("kaimk2026 ok-1\n");
     else         printf("kaimk2026 ng-1 %x %x\n",*(int *)&a,*(((int *)&a)+1));
a=r8;
     if (a==10ll) printf("kaimk2026 ok-2\n");
     else         printf("kaimk2026 ng-2 %x %x\n",*(int *)&a,*(((int *)&a)+1));
a=r4;
     if (a==10ll) printf("kaimk2026 ok-3\n");
     else         printf("kaimk2026 ng-3 %x %x\n",*(int *)&a,*(((int *)&a)+1));
b=r16;
     if (b==10ll) printf("kaimk2026 ok-4\n");
     else         printf("kaimk2026 ng-4 %x %x\n",*(int *)&b,*(((int *)&b)+1));
b=r8;
     if (b==10ll) printf("kaimk2026 ok-5\n");
     else         printf("kaimk2026 ng-5 %x %x\n",*(int *)&b,*(((int *)&b)+1));
b=r4;
     if (b==10ll) printf("kaimk2026 ok-6\n");
     else         printf("kaimk2026 ng-6 %x %x\n",*(int *)&b,*(((int *)&b)+1));
exit (0);
}
