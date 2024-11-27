#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub3(int b);
int sub2(int b);
int sub1(int b);
typedef int typi1;
        int ext1;
static  int ext2;
extern  int ext3;
extern char ext4;
static void sub();
int main() {
  static int a=0;
  int b;

  printf("** SCPLB01 TEST START ***\n");

  sub();
  b=0;
  sub1(b);
  b=1;
  sub2(b);
  b=2;
  sub3(b);

   lbl4:;
   switch(a) {
     case 0  : goto lbl1;
     case 1  : goto lbl2;
     case 2  : goto lbl3;
     case 3  : goto lbl3;
     default : goto lbl3;
   }

  lbl1:;
       printf(" ** NO.5 TEST OK **\n");
       a=1;
       goto lbl4;
  lbl2:;
       printf(" ** NO.6 TEST OK **\n");
       a=2;
       goto lbl4;
  lbl3:;
       printf(" ** NO.7 TEST OK **\n");
       goto lble;

  lble:;
  printf("*** SCPLB01 TEST END   ***\n");
exit (0);
}
int sub1(b)
int b;
{
   switch(b) {
     case 0  : printf(" ** NO.2 TEST OK **\n");
               break ;
     case 1  : printf(" ## NO.2 TEST NG ##\n");
               break ;
     default : printf(" ## NO.2 TEST NG ##\n");
               break ; }
}
int sub2(b)
int b;
{
   switch(b) {
     case 0  : printf(" ## NO.3 TEST NG ##\n");
               break ;
     case 1  : printf(" ** NO.3 TEST OK **\n");
               break ;
     default : printf(" ## NO.3 TEST NG ##\n");
               break ; }
}
int sub3(b)
int b;
{
   switch(b) {
     case 0  : printf(" ## NO.4 TEST NG ##\n");
               break ;
     case 1  : printf(" ## NO.4 TEST NG ##\n");
               break ;
     default : printf(" ** NO.4 TEST OK **\n");
               break ; }
}
static void sub()
{
   printf(" ** NO.1 TEST OK **\n");
}
