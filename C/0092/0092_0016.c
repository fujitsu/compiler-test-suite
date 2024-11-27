#include <stdio.h>


static int sub();

int main(void)
{
  int a[5],i;

  printf ("###  START ###\n");
  for(i=0;i<5;i++)
    a[i] = 1;

  i=sub(a);
  if (i==5 && a[0]==2 && a[1]==2 && a[2]==2 && a[3]==2 && a[4]==2)
    printf ("###       OK       ###\n");
  else
    printf ("###       NG       ###\n");
  printf ("###  END   ###\n");
  return 0;
}

static int sub(t)
int  t[];
{
    int x;
    for (x = 0; x < 5; x++) {
      if ((t[x] = t[x] + 1 ) == 0 )
        break;
    }
    return x;
}
