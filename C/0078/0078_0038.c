

#include <stdio.h>
#include <string.h>

struct bar { char buf[16]; int i; };

unsigned int len = 2;

char foo(struct bar* bp)
{
  unsigned int length;
  unsigned int ndigs;   
  
  length = len;
  if (bp->i >= 0) {
    ndigs = length;
  }
  else if (length <= -bp->i) {
    ndigs = 0;
  }
  else {
    ndigs = length + bp->i;
  }
  
  return bp->buf[ndigs];
}                     

int main(void)
{
  struct bar bar;
  bar.i = -1;
  strcpy(bar.buf, "abcdef");
  printf("Pass\n");
  return foo(&bar);
}
