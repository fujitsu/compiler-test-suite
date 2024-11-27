#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main() {
  unsigned long long int u8a,u8b,u8ans;
  unsigned long long int u8();
  signed   long long int i8a,i8b,i8ans;
  signed   long long int i8();
  printf("scn1219 start\n");
  u8a=1;u8b=3;u8ans=u8(u8a,u8b);
  if (u8ans==8) printf("u8:ok\n");else printf("u8:ng\n");
  i8a=1;i8b=3;i8ans=i8(i8a,i8b);
  if (i8ans==8) printf("i8:ok\n");else printf("i8:ng\n");
  printf("scn1219 ended\n");
exit (0);
}
unsigned long long int u8(u8a,u8b)
  unsigned long long int u8a,u8b;{return(u8a<<u8b);}
signed long long int i8(i8a,i8b)
  signed long long int i8a,i8b;{return(i8a<<i8b);}
