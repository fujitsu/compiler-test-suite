#include <stdio.h>
static void f1() { }
static void f2() { }
static void f()
{
  void (*pf)() = &f;
  void (*af[3])() = { &f, &f1, &f2 };
  if( &*pf==f )
    printf(" TEST1 ok \n");
  else
    printf(" TEST1 ng \n");

  if( &*&*pf==f )
    printf(" TEST2 ok \n");
  else
    printf(" TEST2 ng \n");

  if( &*af[0]==f )
    printf(" TEST3 ok \n");
  else
    printf(" TEST3 ng \n");

  if( &*pf==&f )
    printf(" TEST4 ok \n");
  else
    printf(" TEST4 ng \n");

  if( &*&*pf==&f )
    printf(" TEST5 ok \n");
  else
    printf(" TEST5 ng \n");

  if( &*af[0]==&f )
    printf(" TEST6 ok \n");
  else
    printf(" TEST6 ng \n");

}
int main()
{
  (void)f();
}
