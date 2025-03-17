#include <stdio.h>
int bar();
static int x = 0;

void bra(unsigned char *p, unsigned char *q)
{
  if(  *p < *q  ) {
    bar();
  }
} 
int main()
{
  static unsigned char u1[] = { 0, 1, 2, 3, 125, 126, 127, 128, 254, 255 };
  int i,j;
  for(i=0;i<sizeof(u1);i++) {
    for(j=0;j<sizeof(u1);j++) {
       x=1;
       bra(&u1[i], &u1[j]);
       printf("%u %u %d\n", u1[i], u1[j], x);
    }
  }
}

int bar()
{
  x = 0;
}

