#include <stdio.h>

struct TAG {
  _Bool b:1;
  _Bool c:1;
};


struct TAG foo()
{
  return (struct TAG ){ 1 };
}


struct TAG bar()
{
  struct TAG st;
  st.b = 1;
  return st;
}
int main()
{
  struct TAG st;

  if( foo().b != 1 )  {
    puts("NG-1");
  }

  st = foo();
  if( st.b != 1 )  {
    puts("NG-2");
  }

  if( bar().b != 1 )  {
    puts("NG-3");
  }

  st = bar();
  if( st.b != 1 )  {
    puts("NG-4");
  }

  puts("PASS");
}
