#include <stdio.h>
static int ifunc(int i);

int lto_sub_19() 
{
  int i4data, s;
  long long int i8data;
  long long int i,j;

  s = 0;
  i8data = 0LL;
  i4data = ifunc(2);
  if (i4data != 0) {
    s = s + 1;
    for (j=0LL; j<2; ++j) {
      for (i=0LL; i<i8data; ++i) {
	s = s + 1;
      }
    }
  }
  if (i4data == 0) {
    s = s + 1;
  }
  if (s == 1)
    printf("ok\n");
  else
    printf("ng %d\n", s);
}

static int ifunc(int i) 
{
  return i;
}
