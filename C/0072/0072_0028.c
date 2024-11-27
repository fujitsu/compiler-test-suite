#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (void);

float commb[10],scomb;
union {
        float scomb;
        float equs2;
      } glo_uni;
int 
main (void) 
{
  struct st1 {
    unsigned int l[10];
    float real2[10];
  } t;
  struct st1 *pt = &t;
  int i,j;
  union {
           float real1[10];
           float equs1;
         } loc_uni;
         
    for(i=0;i<10;i++){
      if(i<3 || i > 6) pt->l[i]=1;
      else             pt->l[i]=0;
    }

    for(i=0;i<10;i++){loc_uni.real1[i]=1.; pt->real2[i]=(float) i;}

       sub1();


      for( i=0;i<10;i+=1){ 
       loc_uni.equs1=commb[i];
       if(pt->l[i])  pt->real2[1]=i*10;
L100:;;}

      if(10>100) {
        printf(" equs1 =%7.3f \n",loc_uni.equs1);
        printf(" equs2 =%7.3f \n",glo_uni.equs2);
  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",pt->real2[i]);
      }
  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",commb[i]);

      for( i=0;i<10;i+=1){ 
       loc_uni.equs1=commb[i];
       if(pt->l[i]) pt->real2[2]=i*10;
L200:;;}

      if(pt->real2[9]>100) {
        printf(" equs1 =%7.3f \n",loc_uni.equs1);
        printf(" equs2 =%7.3f \n",glo_uni.equs2);
      }
  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",commb[i]);
exit (0);
      }

      int 
sub1 (void){
      int i;
      scomb=0;
      for( i=0;i<10;i+=1){ 
       commb[i]=i;
       scomb=commb[i]+1;
L10:;;}
      }
