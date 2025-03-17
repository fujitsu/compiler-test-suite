#include <stdio.h>
#include <string.h>
long double     Ldouble = 1.1E5L;
  char * in = "1.100000e+05";
long double dfunc(long double);
int main(){
  (void)printf("%Le\n", Ldouble);
  (void)printf("%Le\n", dfunc(Ldouble));

}

long double dfunc(long double ld)
{
  return ld;
}

