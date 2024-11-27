#include <stdio.h>
int main( ) {
  long long int x;
  unsigned long long int z;
  float a;
  double b;
  long double c;
  x=10ll;
  a=x;
  if (a==10.0)
       printf("**  ok1\n");
  else printf("**  ng1\n");
  b=x;
  if (b==10.0)
       printf("**  ok2\n");
  else printf("**  ng2\n");
  c=x;
  if (c==10.0)
       printf("**  ok3\n");
  else printf("**  ng3\n");
  z=10ll;
  a=z;
  if (a==10.0)
       printf("**  ok4\n");
  else printf("**  ng4\n");
  b=z;
  if (b==10.0)
       printf("**  ok5\n");
  else printf("**  ng5\n");
  c=z;
  if (c==10.0)
       printf("**  ok6\n");
  else printf("**  ng6\n");
}
