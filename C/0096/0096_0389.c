#include  <stdio.h>
int main()
 {
   
   int a,b;
   char  c;
   a=1;
   b=1;
   while(a<=1)
      if (b==1) {
      c='a';
      ++a;
      }
   if (c>='w' && c<='z')
      a=7;
   if (c=='x')
   printf("--- ng1 ---\n");
   else {
      if (b>0) {
        a+=7;
        printf("--- ok ---\n");
        }
      else
        printf("--- ng2 --- b=%d\n",b);
   }
 }
