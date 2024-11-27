#include <stdlib.h>
#include <stdio.h>
#include <math.h>
float commb[10],scomb;
union {
        float scomb;
        float equs2;
      } glo_uni;
int sub (float a[10]);
int 
main (void) 
{
  float real2[10];
  int i,j;
  union {
           float real1[10];
           float equs1;
         } loc_uni;
    for(i=0;i<10;i++){loc_uni.real1[i]=1.; real2[i]=(float) i;}
    sub(loc_uni.real1);
    for( j=0;j<10;j+=1)
    {

       for( i=0;i<10;i+=1)
       { 
        loc_uni.equs1=commb[i];
        glo_uni.equs2=real2[i];
       }
      if(j<0) {
        printf(" equs1 =%7.3f \n",loc_uni.equs1);
        printf(" equs2 =%7.3f \n",glo_uni.equs2);
       }
     }
  for(i=0;i<10;i++) printf(" commb =%7.3f \n",commb[i]);

  for( j=0;j<10;j+=1)
  { 

    for( i=0;i<10;i+=1)
     { 
        loc_uni.equs1=commb[1];
        glo_uni.equs2=real2[i];
      }
       if(j>=10) {
        printf(" equs1 =%7.3f \n",loc_uni.equs1);
        printf(" equs2 =%7.3f \n",glo_uni.equs2);
       }
  }

  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",real2[i]);

      sub(loc_uni.real1);
exit (0);
      }

      int 
sub (float a[10])
      {
      union {
              float sub1;
              float b;
            } uni_sub;
      int i;

      for( i=0;i<10;i+=1)
      { 
       commb[i]=a[i];
       uni_sub.b=a[i]*10;
      }
       scomb=uni_sub.b/commb[9];
       return 0;
      }

