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
  unsigned int l[10]={0,0,0,1,1,1,1,0,0,0};
  float real2[10];
  int i,j;
  union {
           float real1[10];
           float equs1;
         } loc_uni;
    for(i=0;i<10;i++){loc_uni.real1[i]=1.; real2[i]=(float) i;}

       sub1();

      for( i=0;i<10;i+=1){ 
       loc_uni.equs1=commb[i];
       if(l[i])  real2[1]=i*10;
L100:;;}

      if(10>100) {
        printf(" equs1 =%7.3f \n",loc_uni.equs1);
        printf(" equs2 =%7.3f \n",glo_uni.equs2);
  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",real2[i]);
      }
  for(i=0;i<10;i++) printf(" real2 =%7.3f \n",commb[i]);

      for( i=0;i<10;i+=1){ 
       loc_uni.equs1=commb[i];
       if(l[i]) real2[2]=i*10;
L200:;;}

      if(real2[9]>100) {
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
