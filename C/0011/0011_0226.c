#include  <stdio.h>

#include <setjmp.h>
 int sub1();
#define   m_type_january  1
#define   m_type_may      2
#define   m_type_october  3
#define   m_type_december 4

          jmp_buf env;
int 
main (void)
{
          int    x;
          struct tag1  {
          int    month;
          int    day;
          } birth;

  printf("********** TEST START **********\n");

          birth.month=m_type_october;
          birth.day=28;

  switch(birth.month)
      {
   case m_type_january:
      printf("***** 01 ***** N   G *****\n");
      break;
   case m_type_may:
      printf("***** 01 ***** N   G *****\n");
      break;
   case m_type_october:
      printf("***** 01 ***** O   K *****\n");
      break;
   case m_type_december:
      printf("***** 01 ***** N   G *****\n");
      break;
   default  :
      printf("***** 01 ***** N   G *****\n");
      }
  switch(birth.day)
      {
   case    1:
      printf("***** 02 ***** N   G *****\n");
      break;
   case    7:
      printf("***** 02 ***** N   G *****\n");
      break;
   case   14:
      printf("***** 02 ***** N   G *****\n");
      break;
   case   28:
      printf("***** 02 ***** O   K *****\n");
      break;
   default  :
      printf("***** 02 ***** N   G *****\n");
      }
  x=setjmp(env);
   if(x==0)
  sub1();
   else
  printf("********** TEST  END **********\n");
}
  int 
sub1 (void)
   {
       int    val;
              val=3;
      printf("***** 03 ***** O   K *****\n");

       longjmp(env,val);

      printf("***** 03 ***** N   G *****\n");
   }
