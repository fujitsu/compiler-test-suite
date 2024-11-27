#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int indata[10];
   int n ;
int inputdata(struct numlist *justnum, struct numlist *updatad);
int dataout(struct numlist *justnum);
int main()
{
   struct numlist listar[50] ;
   struct numlist *startad ;
   struct numlist *updatad ;
   static int allnum[10]={1,2,3,4,5,6,7,8,9,10} ;
   int result ;
   int i ;
       indata[0]=5 ;
       indata[1]=8 ;
       indata[2]=2 ;
       indata[3]=9 ;
       indata[4]=6 ;
       indata[5]=10;
       indata[6]=1 ;
       indata[7]=7 ;
       indata[8]=3 ;
       indata[9]=4 ;
   startad=listar ;
   printf ("*****  sort *****\n");
   startad->number=indata[0] ;
   startad->benum=0 ;
   startad->afnum=0 ;
   updatad=listar ;
   i=1 ;
   while (i<=9)
         {
          updatad=updatad+1 ;
          updatad->number=indata[i] ;
          updatad->benum=0 ;
          updatad->afnum=0 ;
          inputdata (startad,updatad);
          i++ ;
         }
   n=0 ;
   dataout (startad);
   if(memcmp(indata,allnum,40)==0)
     {
       printf ("***** ok *****\n");
     }
   else
     {
       printf ("***** ng *****\n");
      }
exit (0);
}
int inputdata(justnum,updatad)
struct numlist *justnum ;
struct numlist *updatad ;
{
   if (justnum->number > updatad->number)
  {
     if (justnum->benum==0)
       justnum->benum=updatad ;
     else
       inputdata (justnum->benum,updatad);
   }
    else
      {
        if (justnum->afnum==0)
            justnum->afnum=updatad ;
        else
            inputdata (justnum->afnum,updatad);
       }
   return 0;
}
int dataout(justnum)
struct numlist *justnum ;
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf (" value:- %d -\n",justnum->number);
indata[n] = justnum->number ;
n++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
 return 0;
}
