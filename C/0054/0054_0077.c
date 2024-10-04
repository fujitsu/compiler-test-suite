#include<stdio.h>
 

 struct tag {
        int   a,b,c,d;
        } ;
int main()
{
 struct tag  st1={1,2,3,4},st2={1,2,3,4};

 int a,func();

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

   a=func(st2);

   if(a==1)
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG ****\n");

   if(st1.a==1)
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG ****\n");

   printf("******* 01 TEST ENDED *******\n");
}

int func(st)
  struct tag st;
{
  int a;
  a=st.a;
  return a;
  }
