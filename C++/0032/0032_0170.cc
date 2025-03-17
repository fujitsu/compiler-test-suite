#include <stdio.h>
#include <string.h>
long double     Ldouble = 1.1E5L;
long double dfunc(long double ld);

int main(){
  if (dfunc(Ldouble) == 1.1E5L)
    printf("ok\n");
  else
    printf("ng (2)\n");
}

long double dfunc(long double ld)
{
  if (ld == 1.1E5L)
    return ld;
  else
    printf("ng (1) %Le\n", ld);
}

