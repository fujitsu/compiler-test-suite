#include <stdio.h>
struct {
  char c;
  signed char  sc : 1;
  signed short ss : 1;
  signed int   si : 1;
  signed long long   sll : 1;
  unsigned char  uc : 1;
  unsigned short us : 1;
  unsigned int   ui : 1;
  unsigned long long   ull : 1;
} x; 

void f1()
{
  long i;
  long ll;
  


  x.sc = 3;
  i = x.sc;

  if (i != ~0) {
    printf("ng %d\n", __LINE__);
    printf("%d\n", i);
    printf("%d\n", x.sc);
  }
  else printf("ok\n");
}
int main()
{
  f1();
}
