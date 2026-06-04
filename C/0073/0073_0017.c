#include <stdlib.h>
#include <stdio.h>

#define  DUMMY_LOOP 20000
#define  MAXL 1000

static int i_tbl[]={
  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
  17,18,19,20,21,22,23,24,25,0};

static int ifunc(i) int i; {return i;}
int main()
{
   char *p,*q,*startp,*startq;
   int   i,j,k;

   p=(char *)malloc(ifunc(MAXL));
   q=(char *)malloc(ifunc(MAXL));
   startp=p;
   startq=q;


   p=startp;

   k=0;
   for(i=0;i<MAXL-1;i++,p++){
     *p = 'a';
   }
   *p='\0';
     
   for (j=0;j<DUMMY_LOOP;j++){
     k=0;
     q=startq;
     p=startp;

     while (*p!='\0'){
       if (k==25) {
	 *q= *p + i_tbl[k];
         k=0;
       }else{
	 *q= *p + i_tbl[k];
         k++;
       }
       p++;
       q++;
     }
     *q='\0';
   }
   printf ("%s\n",startq);

   free(startp);
   free(startq);
 }
     
     
