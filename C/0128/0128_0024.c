#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int int1(float a[10]);
  float scom1;
  union NAME { float requ[10];
               float sequ;
        } uni ;
int main() 
{
  float  real1[10],real2[10]={1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,0.0},var1;
  unsigned int logic[10]={0,0,0,1,1,0,0,0,0,1};
  long     int i;

      int1(real1);

      real2[2]=0.;
      for( i=0;i<10;i+=1){
       var1=real1[i];
       real2[0]=var1;
       if(logic[i]) {
           real2[2]=real1[i];
          }
       }

   printf("***** LOOP 1 ***** \n");
   printf("%7.3f \n",var1);
   printf("%7.3f \n",real2[0]);
   printf("%7.3f \n",real2[1]);

      int1(uni.requ);

      for( i=0;i<10;i+=1){
       uni.requ[9]=real1[i];
       scom1=real1[9-i];
      }

   printf("***** LOOP 2 ***** \n");
   for(i=0;i<10;i++)printf("%7.3f \n",uni.requ[i]); printf("\n");
   printf("%7.3f \n",uni.sequ);
   printf("%7.3f \n",scom1);
exit (0);
}

int int1(float a[10]){
      int i;
      for( i=0;i<10;i+=1){
       a[i]=i;
      }
}
