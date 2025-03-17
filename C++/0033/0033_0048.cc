#include <stdio.h>
#define OK printf("ok\n");
#define NG(i) printf("ng %d\n", i);
int main() {
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

#pragma omp parallel
  c |= c;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= uc;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= sc;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= s;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= us;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= i;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= ui;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= l;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= ul;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= ll;
  printf("0x%x\n", c);
#pragma omp parallel
  c |= ull;
  printf("0x%x\n", c);

#pragma omp parallel
  uc |= c;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= uc;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= sc;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= s;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= us;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= i;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= ui;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= l;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= ul;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= ll;
  printf("0x%x\n", uc);
#pragma omp parallel
  uc |= ull;
  printf("0x%x\n", uc);

#pragma omp parallel
  sc |= c;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= uc;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= sc;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= s;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= us;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= i;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= ui;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= l;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= ul;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= ll;
  printf("0x%x\n", sc);
#pragma omp parallel
  sc |= ull;
  printf("0x%x\n", sc);

#pragma omp parallel
  s |= c;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= uc;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= sc;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= s;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= us;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= i;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= ui;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= l;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= ul;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= ll;
  printf("0x%x\n", s);
#pragma omp parallel
  s |= ull;
  printf("0x%x\n", s);

#pragma omp parallel
  us |= c;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= uc;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= sc;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= s;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= us;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= i;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= ui;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= l;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= ul;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= ll;
  printf("0x%x\n", us);
#pragma omp parallel
  us |= ull;
  printf("0x%x\n", us);

#pragma omp parallel
  i |= c;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= uc;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= sc;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= s;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= us;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= i;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= ui;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= l;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= ul;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= ll;
  printf("0x%x\n", i);
#pragma omp parallel
  i |= ull;
  printf("0x%x\n", i);

#pragma omp parallel
  ui |= c;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= uc;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= sc;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= s;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= us;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= i;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= ui;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= l;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= ul;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= ll;
  printf("0x%x\n", c);
#pragma omp parallel
  ui |= ull;
  printf("0x%x\n", c);

#pragma omp parallel
  l |= c;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= uc;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= sc;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= s;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= us;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= i;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= ui;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= l;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= ul;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= ll;
  printf("0x%x\n", l);
#pragma omp parallel
  l |= ull;
  printf("0x%x\n", l);

#pragma omp parallel
  ul |= c;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= uc;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= sc;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= s;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= us;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= i;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= ui;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= l;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= ul;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= ll;
  printf("0x%x\n", ul);
#pragma omp parallel
  ul |= ull;
  printf("0x%x\n", ul);

#pragma omp parallel
  ll |= c;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= uc;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= sc;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= s;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= us;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= i;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= ui;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= l;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= ul;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= ll;
  printf("0x%llx\n", ll);
#pragma omp parallel
  ll |= ull;
  printf("0x%llx\n", ll);

#pragma omp parallel
  ull |= c;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= uc;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= sc;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= s;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= us;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= i;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= ui;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= l;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= ul;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= ll;
  printf("0x%llx\n", ull);
#pragma omp parallel
  ull |= ull;
  printf("0x%llx\n", ull);
}
