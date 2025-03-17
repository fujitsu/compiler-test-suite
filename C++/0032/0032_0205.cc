#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INI \
  c = 0x12;\
  uc = 0x12;\
  sc = 0x12;\
  s = 0x1234;\
  us = 0x1234;\
  i = 0x12345678;\
  ui = 0x12345678; \
  l = 0x12345678;\
  ul = 0x1234568;\
  ll = 0x12345678;\
  ull = 0x12345678;
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

  c %= c;   printf("0x%x\n", c); INI; 
  c %= uc;  printf("0x%x\n", c); INI; 
  c %= sc;  printf("0x%x\n", c); INI; 
  c %= s;   printf("0x%x\n", c); INI; 
  c %= us;  printf("0x%x\n", c); INI; 
  c %= i;   printf("0x%x\n", c); INI; 
  c %= ui;  printf("0x%x\n", c); INI; 
  c %= l;   printf("0x%x\n", c); INI; 
  c %= ul;  printf("0x%x\n", c); INI; 
  c %= ll;  printf("0x%x\n", c); INI; 
  c %= ull; printf("0x%x\n", c); INI; 

INI;
  uc %= c;   printf("0x%x\n", uc); INI; 
  uc %= uc;  printf("0x%x\n", uc); INI; 
  uc %= sc;  printf("0x%x\n", uc); INI; 
  uc %= s;   printf("0x%x\n", uc); INI; 
  uc %= us;  printf("0x%x\n", uc); INI; 
  uc %= i;   printf("0x%x\n", uc); INI; 
  uc %= ui;  printf("0x%x\n", uc); INI; 
  uc %= l;   printf("0x%x\n", uc); INI; 
  uc %= ul;  printf("0x%x\n", uc); INI; 
  uc %= ll;  printf("0x%x\n", uc); INI; 
  uc %= ull; printf("0x%x\n", uc); INI; 

INI;
  sc %= c;   printf("0x%x\n", sc); INI; 
  sc %= uc;  printf("0x%x\n", sc); INI; 
  sc %= sc;  printf("0x%x\n", sc); INI; 
  sc %= s;   printf("0x%x\n", sc); INI; 
  sc %= us;  printf("0x%x\n", sc); INI; 
  sc %= i;   printf("0x%x\n", sc); INI; 
  sc %= ui;  printf("0x%x\n", sc); INI; 
  sc %= l;   printf("0x%x\n", sc); INI; 
  sc %= ul;  printf("0x%x\n", sc); INI; 
  sc %= ll;  printf("0x%x\n", sc); INI; 
  sc %= ull; printf("0x%x\n", sc); INI; 

INI;
  s %= c;   printf("0x%x\n", s); INI; 
  s %= uc;  printf("0x%x\n", s); INI; 
  s %= sc;  printf("0x%x\n", s); INI; 
  s %= s;   printf("0x%x\n", s); INI; 
  s %= us;  printf("0x%x\n", s); INI; 
  s %= i;   printf("0x%x\n", s); INI; 
  s %= ui;  printf("0x%x\n", s); INI; 
  s %= l;   printf("0x%x\n", s); INI; 
  s %= ul;  printf("0x%x\n", s); INI; 
  s %= ll;  printf("0x%x\n", s); INI; 
  s %= ull; printf("0x%x\n", s); INI; 

INI;
  us %= c;   printf("0x%x\n", us); INI; 
  us %= uc;  printf("0x%x\n", us); INI; 
  us %= sc;  printf("0x%x\n", us); INI; 
  us %= s;   printf("0x%x\n", us); INI; 
  us %= us;  printf("0x%x\n", us); INI; 
  us %= i;   printf("0x%x\n", us); INI; 
  us %= ui;  printf("0x%x\n", us); INI; 
  us %= l;   printf("0x%x\n", us); INI; 
  us %= ul;  printf("0x%x\n", us); INI; 
  us %= ll;  printf("0x%x\n", us); INI; 
  us %= ull; printf("0x%x\n", us); INI; 

INI;
  i %= c;   printf("0x%x\n", i); INI; 
  i %= uc;  printf("0x%x\n", i); INI; 
  i %= sc;  printf("0x%x\n", i); INI; 
  i %= s;   printf("0x%x\n", i); INI; 
  i %= us;  printf("0x%x\n", i); INI; 
  i %= i;   printf("0x%x\n", i); INI; 
  i %= ui;  printf("0x%x\n", i); INI; 
  i %= l;   printf("0x%x\n", i); INI; 
  i %= ul;  printf("0x%x\n", i); INI; 
  i %= ll;  printf("0x%x\n", i); INI; 
  i %= ull; printf("0x%x\n", i); INI; 

INI;
  ui %= c;   printf("0x%x\n", c); INI; 
  ui %= uc;  printf("0x%x\n", c); INI; 
  ui %= sc;  printf("0x%x\n", c); INI; 
  ui %= s;   printf("0x%x\n", c); INI; 
  ui %= us;  printf("0x%x\n", c); INI; 
  ui %= i;   printf("0x%x\n", c); INI; 
  ui %= ui;  printf("0x%x\n", c); INI; 
  ui %= l;   printf("0x%x\n", c); INI; 
  ui %= ul;  printf("0x%x\n", c); INI; 
  ui %= ll;  printf("0x%x\n", c); INI; 
  ui %= ull; printf("0x%x\n", c); INI; 

INI;
  l %= c;   printf("0x%x\n", l); INI; 
  l %= uc;  printf("0x%x\n", l); INI; 
  l %= sc;  printf("0x%x\n", l); INI; 
  l %= s;   printf("0x%x\n", l); INI; 
  l %= us;  printf("0x%x\n", l); INI; 
  l %= i;   printf("0x%x\n", l); INI; 
  l %= ui;  printf("0x%x\n", l); INI; 
  l %= l;   printf("0x%x\n", l); INI; 
  l %= ul;  printf("0x%x\n", l); INI; 
  l %= ll;  printf("0x%x\n", l); INI; 
  l %= ull; printf("0x%x\n", l); INI; 

INI;
  ul %= c;   printf("0x%x\n", ul); INI; 
  ul %= uc;  printf("0x%x\n", ul); INI; 
  ul %= sc;  printf("0x%x\n", ul); INI; 
  ul %= s;   printf("0x%x\n", ul); INI; 
  ul %= us;  printf("0x%x\n", ul); INI; 
  ul %= i;   printf("0x%x\n", ul); INI; 
  ul %= ui;  printf("0x%x\n", ul); INI; 
  ul %= l;   printf("0x%x\n", ul); INI; 
  ul %= ul;  printf("0x%x\n", ul); INI; 
  ul %= ll;  printf("0x%x\n", ul); INI; 
  ul %= ull; printf("0x%x\n", ul); INI; 

INI;
  ll %= c;   printf("0x%llx\n", ll); INI; 
  ll %= uc;  printf("0x%llx\n", ll); INI; 
  ll %= sc;  printf("0x%llx\n", ll); INI; 
  ll %= s;   printf("0x%llx\n", ll); INI; 
  ll %= us;  printf("0x%llx\n", ll); INI; 
  ll %= i;   printf("0x%llx\n", ll); INI; 
  ll %= ui;  printf("0x%llx\n", ll); INI; 
  ll %= l;   printf("0x%llx\n", ll); INI; 
  ll %= ul;  printf("0x%llx\n", ll); INI; 
  ll %= ll;  printf("0x%llx\n", ll); INI; 
  ll %= ull; printf("0x%llx\n", ll); INI; 

INI;
  ull %= c;   printf("0x%llx\n", ull); INI; 
  ull %= uc;  printf("0x%llx\n", ull); INI; 
  ull %= sc;  printf("0x%llx\n", ull); INI; 
  ull %= s;   printf("0x%llx\n", ull); INI; 
  ull %= us;  printf("0x%llx\n", ull); INI; 
  ull %= i;   printf("0x%llx\n", ull); INI; 
  ull %= ui;  printf("0x%llx\n", ull); INI; 
  ull %= l;   printf("0x%llx\n", ull); INI; 
  ull %= ul;  printf("0x%llx\n", ull); INI; 
  ull %= ll;  printf("0x%llx\n", ull); INI; 
  ull %= ull; printf("0x%llx\n", ull); INI; 

}
