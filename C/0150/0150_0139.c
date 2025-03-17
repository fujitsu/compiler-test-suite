#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main(){
  long long int a;
  int b = 0LL || 0;
  int c = 1LL && 0;

  printf(" TEST START\n");
  a = 256 & 0xffffll;
  if(a != 256) printf(" TEST01 NG a = %d\n",a);
  a = 0xffffll & 256;
  if(a != 256) printf(" TEST02 NG a = %d\n",a);
  if(b != 0)   printf(" TEST03 NG b = %d\n",b);
  if(c != 0)   printf(" TEST04 NG c = %d\n",c);

  printf(" TEST END\n");
exit (0);
}
