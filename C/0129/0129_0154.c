#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
struct sort
{
   int data ;
   struct sort *before ;
} ;
int correlation(struct sort *now, struct sort *add);
int main()
{
   struct sort num[50] ;
   struct sort *first ;
   struct sort *last ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int ccc[20] ;
   int n ;
   int i ;
   ccc[0]=100 ;
   ccc[1]=6 ;
   ccc[2]=30 ;
   ccc[3]=10 ;
   ccc[4]=2 ;
   ccc[5]=0 ;
   ccc[6]=4 ;
   ccc[7]=40 ;
   ccc[8]=7 ;
   ccc[9]=80 ;
   ccc[10]=3 ;
   ccc[11]=50 ;
   ccc[12]=1 ;
   ccc[13]=90 ;
   ccc[14]=20 ;
   ccc[15]=9 ;
   ccc[16]=70 ;
   ccc[17]=8 ;
   ccc[18]=60 ;
   ccc[19]=5 ;
   first=num ;
   last=num ;
   first->data=ccc[0] ;
   first->before=0 ;
   i=1;
   printf ("***** sort *****\n");
   while (i<=19)
      {
         last++ ;
         last->before=0 ;
         last->data=ccc[i] ;
         if (first->data > last->data)
           {
             last->before=first ;
             first=last;
           }
         else
             correlation (first,last);
         i++;
       }
    n=0;
    while (first != 0)
       {
         ccc[n]=first->data ;
         first=first->before ;
         n++;
       }
   if (memcmp(ccc,allnum,80)==0)
        printf ("***** ok *****\n");
   else
        printf ("***** ng *****\n");
exit (0);
}
int correlation(struct sort *now, struct sort *add)
{
    if ((now->before->data)<(add->data) && now->before!=0)
      {
        correlation (now->before,add);
      }
    else
     {
        add->before=now->before;
        now->before=add ;
     }
    return 0;
}
