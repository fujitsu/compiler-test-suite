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
    struct st1 {
        float real1[10],real2[10];
        unsigned int logic[10];
    } t;
    struct st1 *pt = &t;

    float    var1;
    long int i;

    for(i=0;i<10;i++){
        if(i==9) pt->real2[i]=0;
        pt->real2[i]=(float)(i+1);
        if(i==3 || i==4 || i==9)
            pt->logic[i]=1;
        else
            pt->logic[i]=0;
    }


      int1(&pt->real1);

      pt->real2[2]=0.;
      for( i=0;i<10;i+=1){
       var1=pt->real1[i];
       pt->real2[0]=var1;
       if(pt->logic[i]) {
           pt->real2[2]=pt->real1[i];
          }
       }

   printf("***** LOOP 1 ***** \n");
   printf("%7.3f \n",var1);
   printf("%7.3f \n",pt->real2[0]);
   printf("%7.3f \n",pt->real2[1]);

      int1(uni.requ);

      for( i=0;i<10;i+=1){
       uni.requ[9]=pt->real1[i];
       scom1=pt->real1[9-i];
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
