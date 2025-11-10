
#include <stdio.h>
void init_data(a)
     int *a;
{
  *a = 2;
}

int lto_sub_38()
{
  int  i4d1, i4d2, i4result;

  
  printf(" test1 start\n\n");
  init_data(&i4d1);
  init_data(&i4d2);
  if (i4d1==i4d2)
    i4result = 1;
  else
    i4result = 0;
  printf(" test1 OK %d\n\n", i4result);
  printf(" test1 end\n");

  
  printf(" test2 start\n\n");
  init_data(&i4d1);
  init_data(&i4d2);
  i4result = (i4d1==i4d2);
  printf(" test2 OK %d\n\n", i4result);
  printf(" test2 end\n");
}

