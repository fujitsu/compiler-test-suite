#include <stdio.h>


int main(void)
{
  struct tag
  {
     char       a : 1;
     short int  b : 3;
  } st;

  printf ("###  START ###\n");
  st.b = 0;
  if (st.b!=0)
    printf ("###       NG       ###\n");
  else
    printf ("###       OK       ###\n");
  printf ("###    END ###\n");
  return 0;
}
