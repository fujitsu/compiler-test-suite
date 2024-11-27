#include <stdio.h>

void xprintf(char *p, long long int x) {
  printf("%llx \n", x);
}

void print_char(char y)
{
  xprintf("%llx \n", (long long int )y);
}

void print_short(short y)
{
  xprintf("%llx \n", (long long int )y);
}

void print_int(int y)
{
  xprintf("%llx \n", (long long int )y);
}

void print_charu(char y)
{
  xprintf("%llx \n", (unsigned long long int )y);
}

void print_ucharu(unsigned char y)
{
  xprintf("%llx \n", (unsigned long long int )y);
}

void print_shortu(short y)
{
  xprintf("%llx \n", (unsigned long long int )y);
}

void print_intu(int y)
{
  xprintf("%llx \n", (unsigned long long int )y);
}
int main()
{
   print_char(0x800000ff);
   print_short(0x8000ffff);
   print_int(0x80000000ffffffff);
   print_charu(0x800000ff);
   print_shortu(0x8000ffff);
   print_intu(0x80000000ffffffff);
   puts("PASS");
}
