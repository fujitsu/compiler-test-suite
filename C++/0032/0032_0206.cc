#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
int main()
{
  char c = 0x12;
  unsigned char uc = 0x12;
  signed char sc = 0x12;
  short s = 0x1234;
  unsigned short us = 0x1234;
  int i = 0x12345678;
  unsigned int ui = 0x12345678;
  long l = 0x12345678;
  unsigned long ul = 0x1234568;
  long long ll = 0x12345678;
  unsigned long long ull = 0x12345678;

  c &= c;   printf("0x%x\n", c); 
  c &= uc;  printf("0x%x\n", c); 
  c &= sc;  printf("0x%x\n", c); 
  c &= s;   printf("0x%x\n", c); 
  c &= us;  printf("0x%x\n", c); 
  c &= i;   printf("0x%x\n", c); 
  c &= ui;  printf("0x%x\n", c); 
  c &= l;   printf("0x%x\n", c); 
  c &= ul;  printf("0x%x\n", c); 
  c &= ll;  printf("0x%x\n", c); 
  c &= ull; printf("0x%x\n", c); 

  uc &= c;   printf("0x%x\n", uc); 
  uc &= uc;  printf("0x%x\n", uc); 
  uc &= sc;  printf("0x%x\n", uc); 
  uc &= s;   printf("0x%x\n", uc); 
  uc &= us;  printf("0x%x\n", uc); 
  uc &= i;   printf("0x%x\n", uc); 
  uc &= ui;  printf("0x%x\n", uc); 
  uc &= l;   printf("0x%x\n", uc); 
  uc &= ul;  printf("0x%x\n", uc); 
  uc &= ll;  printf("0x%x\n", uc); 
  uc &= ull; printf("0x%x\n", uc); 

  sc &= c;   printf("0x%x\n", sc); 
  sc &= uc;  printf("0x%x\n", sc); 
  sc &= sc;  printf("0x%x\n", sc); 
  sc &= s;   printf("0x%x\n", sc); 
  sc &= us;  printf("0x%x\n", sc); 
  sc &= i;   printf("0x%x\n", sc); 
  sc &= ui;  printf("0x%x\n", sc); 
  sc &= l;   printf("0x%x\n", sc); 
  sc &= ul;  printf("0x%x\n", sc); 
  sc &= ll;  printf("0x%x\n", sc); 
  sc &= ull; printf("0x%x\n", sc); 

  s &= c;   printf("0x%x\n", s); 
  s &= uc;  printf("0x%x\n", s); 
  s &= sc;  printf("0x%x\n", s); 
  s &= s;   printf("0x%x\n", s); 
  s &= us;  printf("0x%x\n", s); 
  s &= i;   printf("0x%x\n", s); 
  s &= ui;  printf("0x%x\n", s); 
  s &= l;   printf("0x%x\n", s); 
  s &= ul;  printf("0x%x\n", s); 
  s &= ll;  printf("0x%x\n", s); 
  s &= ull; printf("0x%x\n", s); 

  us &= c;   printf("0x%x\n", us); 
  us &= uc;  printf("0x%x\n", us); 
  us &= sc;  printf("0x%x\n", us); 
  us &= s;   printf("0x%x\n", us); 
  us &= us;  printf("0x%x\n", us); 
  us &= i;   printf("0x%x\n", us); 
  us &= ui;  printf("0x%x\n", us); 
  us &= l;   printf("0x%x\n", us); 
  us &= ul;  printf("0x%x\n", us); 
  us &= ll;  printf("0x%x\n", us); 
  us &= ull; printf("0x%x\n", us); 

  i &= c;   printf("0x%x\n", i); 
  i &= uc;  printf("0x%x\n", i); 
  i &= sc;  printf("0x%x\n", i); 
  i &= s;   printf("0x%x\n", i); 
  i &= us;  printf("0x%x\n", i); 
  i &= i;   printf("0x%x\n", i); 
  i &= ui;  printf("0x%x\n", i); 
  i &= l;   printf("0x%x\n", i); 
  i &= ul;  printf("0x%x\n", i); 
  i &= ll;  printf("0x%x\n", i); 
  i &= ull; printf("0x%x\n", i); 

  ui &= c;   printf("0x%x\n", c); 
  ui &= uc;  printf("0x%x\n", c); 
  ui &= sc;  printf("0x%x\n", c); 
  ui &= s;   printf("0x%x\n", c); 
  ui &= us;  printf("0x%x\n", c); 
  ui &= i;   printf("0x%x\n", c); 
  ui &= ui;  printf("0x%x\n", c); 
  ui &= l;   printf("0x%x\n", c); 
  ui &= ul;  printf("0x%x\n", c); 
  ui &= ll;  printf("0x%x\n", c); 
  ui &= ull; printf("0x%x\n", c); 

  l &= c;   printf("0x%x\n", l); 
  l &= uc;  printf("0x%x\n", l); 
  l &= sc;  printf("0x%x\n", l); 
  l &= s;   printf("0x%x\n", l); 
  l &= us;  printf("0x%x\n", l); 
  l &= i;   printf("0x%x\n", l); 
  l &= ui;  printf("0x%x\n", l); 
  l &= l;   printf("0x%x\n", l); 
  l &= ul;  printf("0x%x\n", l); 
  l &= ll;  printf("0x%x\n", l); 
  l &= ull; printf("0x%x\n", l); 

  ul &= c;   printf("0x%x\n", ul); 
  ul &= uc;  printf("0x%x\n", ul); 
  ul &= sc;  printf("0x%x\n", ul); 
  ul &= s;   printf("0x%x\n", ul); 
  ul &= us;  printf("0x%x\n", ul); 
  ul &= i;   printf("0x%x\n", ul); 
  ul &= ui;  printf("0x%x\n", ul); 
  ul &= l;   printf("0x%x\n", ul); 
  ul &= ul;  printf("0x%x\n", ul); 
  ul &= ll;  printf("0x%x\n", ul); 
  ul &= ull; printf("0x%x\n", ul); 

  ll &= c;   printf("0x%llx\n", ll); 
  ll &= uc;  printf("0x%llx\n", ll); 
  ll &= sc;  printf("0x%llx\n", ll); 
  ll &= s;   printf("0x%llx\n", ll); 
  ll &= us;  printf("0x%llx\n", ll); 
  ll &= i;   printf("0x%llx\n", ll); 
  ll &= ui;  printf("0x%llx\n", ll); 
  ll &= l;   printf("0x%llx\n", ll); 
  ll &= ul;  printf("0x%llx\n", ll); 
  ll &= ll;  printf("0x%llx\n", ll); 
  ll &= ull; printf("0x%llx\n", ll); 

  ull &= c;   printf("0x%llx\n", ull); 
  ull &= uc;  printf("0x%llx\n", ull); 
  ull &= sc;  printf("0x%llx\n", ull); 
  ull &= s;   printf("0x%llx\n", ull); 
  ull &= us;  printf("0x%llx\n", ull); 
  ull &= i;   printf("0x%llx\n", ull); 
  ull &= ui;  printf("0x%llx\n", ull); 
  ull &= l;   printf("0x%llx\n", ull); 
  ull &= ul;  printf("0x%llx\n", ull); 
  ull &= ll;  printf("0x%llx\n", ull); 
  ull &= ull; printf("0x%llx\n", ull); 

}
