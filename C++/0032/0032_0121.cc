#include<stdio.h>
 
 struct sttag1 {
   short int  s;
 };
int main()
{
     struct sttag1 st1;

     st1.s = 1;
     if (st1.s != 1)
         printf("ng %d\n",st1.s);
     else
         printf("ok\n");

}
