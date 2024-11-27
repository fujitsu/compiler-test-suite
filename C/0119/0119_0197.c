#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>
int sub2();
int sub();

  struct tag {
    int a,b,c;
    int d,e,f;
  } ;

  struct tag *global;
  struct tag  gst;
int main()
{
  struct tag st;
  st.a = 1;
  st.b = 1;
  st.c = 1;
  gst.a = 2;
  gst.b = 2;
  gst.c = 2;
  global = &st;
  sub();

exit (0);
}

int sub()
{
   int sum,i,sum1,sum2;
   global->a = 1;
   for(sum=0,i=1;i<10;i++) {
     sum = sum + global->b;
     if( global->c == 1  ||
         global->c == 2  ||
         global->c == 3  ||
         global->c == 4 ) {
          sum = sum + global->a;
     }
   }
   sum1 = sum;
   for(sum=0,i=1;i<10;i++) {
     sum = sum + global->b;
     if( global->c == 1  ||
         global->c == 2  ||
         global->c == 3  ||
         global->c == 4 ) {
          sum = sum + global->a;
          sub2();
          sum = sum + global->a;
     }
   }
   sum2 = sum;
   if( sum1 == 18 && sum2 == 52 ) {
     printf(" OK \n");
   }
   else {
     printf(" NG \n");
   }
}

int sub2()
{
    global = &gst;
}
