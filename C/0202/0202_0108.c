#include <stdio.h>

typedef struct Di
{
  long cmap;
}
* Disp;

int main()
{
  struct Di   disp;
  struct Disp *display = (struct Disp *)&disp;

  ((Disp) display)->cmap ;

  printf("OK\n");
}

