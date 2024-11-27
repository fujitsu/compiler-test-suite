#include <stdio.h>
int sub(foo)
int foo;
{


  foo++;
  foo--;
  foo++;
  foo--;
  foo++;
  foo--;
  foo++;
  foo--;

  if (foo)
    {
      printf(" NGNGNG \n");
    }else{
      printf(" OKOKOK \n");
    }
}
int get_int(a)
int a;
{
  return a;
}
int main()

{
  int foo;
  foo = get_int (0,0);
  sub(foo);
}
