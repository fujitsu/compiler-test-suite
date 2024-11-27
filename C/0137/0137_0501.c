#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
  long long int x;
  unsigned long long int z;
  float a;
  double b;
  long double c;
  x=10ll;
  a=x;
  if (a==10.0)
       printf("** kaimk2025 ok1\n");
  else printf("** kaimk2025 ng1\n");
  b=x;
  if (b==10.0)
       printf("** kaimk2025 ok2\n");
  else printf("** kaimk2025 ng2\n");
  c=x;
  if (c==10.0)
       printf("** kaimk2025 ok3\n");
  else printf("** kaimk2025 ng3\n");
  z=10ll;
  a=z;
  if (a==10.0)
       printf("** kaimk2025 ok4\n");
  else printf("** kaimk2025 ng4\n");
  b=z;
  if (b==10.0)
       printf("** kaimk2025 ok5\n");
  else printf("** kaimk2025 ng5\n");
  c=z;
  if (c==10.0)
       printf("** kaimk2025 ok6\n");
  else printf("** kaimk2025 ng6\n");
exit (0);
}
