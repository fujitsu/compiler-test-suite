#include <stdio.h>
int gen_int(int a);
int main()
{
  int i;
  i = gen_int (1234);
  if (1234 != (- - - - - - - - - - - - - - - - - - - - i))
      printf(" NGNGNG \n");
  else
      printf(" OKOKOK \n");
}
int gen_int(a)
int a;
{
  return a;
}
