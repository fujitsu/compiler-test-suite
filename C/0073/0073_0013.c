#include <stdio.h>
int sub (void);
int exec10 (void);
int exec9 (void);
int exec8 (void);
int exec7 (void);
int exec6 (void);
int exec4 (void);
int exec3 (void);
int exec2 (void);
int exec1 (void);
int tmp;
int 
main (void)
{
  int i;
  for(i=0;i<1000000;i++){
    exec1();
    exec2();
    exec3();
    exec4();
    exec6();
    exec7();
    exec8();
    exec9();
    exec10();
  }
  printf("tmp=%d\n",tmp);
  if( tmp == 1 )
    printf(" *** OK *** \n");
  else
    printf(" *** NG *** \n");
}
int 
exec1 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec2 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec3 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec4 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec5 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec6 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec7 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec8 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec9 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
exec10 (void)
{
  int i1;
  tmp = sub();
  i1 = sub();
  tmp += ( i1 > 5 );
  if( tmp == 1 );
}
int 
sub (void)
{
  return 1;
}
