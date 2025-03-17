#include <stdio.h>


#define INT_MAX  2147483647

int sub(int L);
int main()
{
  unsigned int L;
  printf("***** unroll047 ***** unroll 0 never 0 not 1\n");
  L = INT_MAX;
  L += 5;
  sub (L);
  printf("***** unroll047 ***** end\n");
}

int sub (L)
     int L;			
{
  unsigned int i;
  int check = 0;
  for (i = INT_MAX; i < L; i++)
    check++;
  if (check == 5)
    printf ("ok\n");
  else
    printf ("5=%d ng\n", check);
}
