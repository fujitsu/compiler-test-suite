#include <stdio.h>

struct st {
  unsigned char i1a;
  unsigned long long i8a;
  unsigned char i1b;
} ;

struct st init( int n)
{
  struct st ss;
  ss.i1a = n;
  ss.i1b = n+2;
  ss.i8a = n+8;
  return ss;
}

int main()
{
  struct st ss;
  ss = init(8);
  printf("%u %Lu %u \n",ss.i1a, ss.i8a, ss.i1b );
}
