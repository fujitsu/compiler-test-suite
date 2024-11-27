#include <string.h>
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
   int number[20] ;
   int n ;
   int i ;
   number[0]=100 ;
   number[1]=6 ;
   number[2]=30 ;
   number[3]=10 ;
   number[4]=2 ;
   number[5]=0 ;
   number[6]=4 ;
   number[7]=40 ;
   number[8]=7 ;
   number[9]=80 ;
   number[10]=3 ;
   number[11]=50 ;
   number[12]=1 ;
   number[13]=90 ;
   number[14]=20 ;
   number[15]=9 ;
   number[16]=70 ;
   number[17]=8 ;
   number[18]=60 ;
   number[19]=5 ;
   first=num ;
   last=num ;
   first->data=number[0] ;
   first->before=0 ;
   i=1;
   printf ("*****  sort *****\n");
   while (i<=19)
      {
         last++ ;
         last->before=0 ;
         last->data=number[i] ;
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
         number[n]=first->data ;
         first=first->before ;
         n++;
       }
   if (memcmp(number,allnum,80)==0)
        printf ("***** ok *****\n");
   else
        printf ("***** ng *****\n");
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
