#include <stdlib.h>


#include <stdio.h>
#include <math.h>
typedef struct{
        float real;
        float imag;
}complex8;

int main()
  {
    int           ia1[50],ic1[50];
    float         lb[50];
    double        da1[50],db1[50],dc1[50],ds1=0.0;
    complex8      cb1[50],cs1[50];
    int           n1=50,n2=10,k=1;
    int           i;

    for(i=0;i<n1;i++) {
      ia1[i]=0;
      ic1[i]=-i;
      lb[i]=(0==fmod(i,2));
      da1[i]=0;
      db1[i]=i;
      dc1[i]=-1;
      cb1[i].real=0;
      cb1[i].imag=i;
      cs1[i].real=cs1[i].imag=0;
    }    

    for(i=0;i<n2;i++) {
      if(lb[2]) {
	cs1[i].real+=cb1[i].real;
	cs1[i].imag+=cb1[i].imag;
	da1[k]=db1[i]*dc1[i];
	k+=1;
	ds1+=db1[k];
	ds1+=db1[k];
	ic1[3]=ic1[3]+ia1[k];
      }
      ic1[3]+=ia1[k];
    }
    printf("cs1 => ");
    for(i=0;i<50;i++) printf("%f %f",cs1[i].real,cs1[i].imag);
    printf("\nda1 => ");
    for(i=0;i<50;i++) printf("%g",da1[i]);
    printf("\nk => %d ds1 => %g\n",k,ds1);
    printf("ic1 => ");
    for(i=0;i<50;i++) printf("%d ",ic1[i]);
    printf("\n");
    exit(0);
  }
