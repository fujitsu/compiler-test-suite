#include  <stdio.h>

#define OK 1
#define NG 0

struct tag1 {
   char      t1xx[90];
   long int  t1a:8;
   long int  t1b:8;
   long int  t1c:8;
   long int  t1d:8;
};
struct tag2 {
   char      t2xx[4000];
};
struct tag3 {
   char      t3xx[5001];
};

int sub(volatile struct tag1 *pst1)
{
   if( pst1->t1a + pst1->t1b + pst1->t1c + pst1-> t1d == 100)
     return OK;
    else
     return NG;
}
int main()
{
   volatile struct tag1 st1;
   volatile struct tag2 st2;
   volatile struct tag3 st3;

   st2.t2xx[0] = 'a';
   st3.t3xx[0] = 'b';
   st1.t1a = 10;
   st1.t1b = 20;
   st1.t1c = 30;
   st1.t1d = 40;
   printf("***  START  ***\n");
   if (sub(&st1) == OK)
     printf("     +++ OK +++\n");
   else
   {
     printf("     --- NG ---\n");
     printf(" a,b,c,d = %d,%d,%d,%d\n",
                        st1.t1a,st1.t1b,st1.t1c,st1.t1d);
   }
   printf("***   END  ***\n");
}
