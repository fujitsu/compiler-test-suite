#include  <stdio.h>

int main() {
  unsigned long long int u8a,u8b,u8ans;
  unsigned long long int u8(unsigned long long int u8a, unsigned long long int u8b);
  signed   long long int i8a,i8b,i8ans;
  signed   long long int i8(signed long long int i8a, signed long long int i8b);
  printf("start\n");
  u8a=1;u8b=3;u8ans=u8(u8a,u8b);
  if (u8ans==8) printf("u8:ok\n");else printf("u8:ng\n");
  i8a=1;i8b=3;i8ans=i8(i8a,i8b);
  if (i8ans==8) printf("i8:ok\n");else printf("i8:ng\n");
  printf("ended\n");
}
unsigned long long int u8(unsigned long long int u8a, unsigned long long int u8b)
  {return(u8a<<u8b);}
signed long long int i8(signed long long int i8a, signed long long int i8b)
  {return(i8a<<i8b);}
