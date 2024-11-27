#include <stdio.h>
int sub3(int x);
int sub2(int x);
int sub(float x);
int main()
{
   int q;
   printf(" Begin\n");
   printf("The purpose of this program is to check the information");
   printf("for the sampler issued by the `optimized' compiler.\n");
   printf("So, you have to specify `-zcom=t',`-O' and '-S' options.\n");
   printf("And you have to check the asembler code by your eyes");
   printf("whether each `call' instruction has its `line' infomation.\n");

   printf("If you don't need check information for sampler,");
   printf("please go this program and check `OK' or `NG'.\n\n");
   
   q=sub(1.0);
   if (q==1)
      sub2(q+1);
   else
      sub3(q-1);
  
   printf(" End\n");
 }

int sub(float x)
{
   if (x<1.0 || x>1.0)
     return -100;
   else
     return 1;
 }

int sub2(int x)
{  
   if (x>=2 && 2>=x)
     printf("OK\n");
   else
     printf("NG\n");
   return 0;
}

int sub3(int x)
{
  printf("NG\n");
  return 0;
}

