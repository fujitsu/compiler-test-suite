#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1(int n);
int iscom ;
int 
main (void) {

      int int1[10][10],int2[10][10],i,j,n;
      unsigned int logic[10]={0,0,0,1,1,0,0,0,0,1};
      union {
          int iequ[10][10];
          int isequ ;
            } uni;
      for(i=0;i<10;i++)for(j=0;j<10;j++)
      {
         int2[i][j] = 0; uni.iequ[i][j]=0;
      }

      iscom=10000;
      uni.isequ=10000;
      n=0;
      for( i=0;i<10;i+=1){ 
       int1[i][n]=i;
       sub1(int1[i][n]);
       for( j=0;j<10;j+=1){ 
        if(logic[j]) {
         uni.iequ[i][j]=i*j;
         int2[i][j]=iscom;
        }
L110:;;}
       n=n+1;
L100:;;}

      printf(" ***** LOOP 1 ***** \n");
      printf(" iseq = %d \n",uni.isequ);
      printf(" iequ = \n");
 for(i=0;i<10;i++)for(j=0;j<10;j++)printf(" %d ",uni.iequ[i][j]);
      printf(" \n int2 = \n");
 for(i=0;i<10;i++)for(j=0;j<10;j++)printf(" %d ",int2[i][j]);
      printf(" \n iscom= %d \n",iscom);

      iscom=10000;
      uni.isequ=10000;
      n=0;
      for( i=0;i<10;i+=1){ 
       int1[i][n]=i;
       sub1(int1[i][n]);
       for( j=0;j<10;j+=1){ 
        if(logic[j]) {
         uni.iequ[i][1]=i*j;
         int2[i][1]=iscom;
        }
L210:;;}
       n=n+1;
L200:;;}

      printf(" ***** LOOP 2 ***** \n");
      printf(" iseq = %d \n",uni.isequ);
      printf(" iequ = \n");
 for(i=0;i<10;i++)for(j=0;j<10;j++)printf(" %d ",uni.iequ[i][j]);
      printf(" \n int2 = \n");
 for(i=0;i<10;i++)for(j=0;j<10;j++)printf(" %d ",int2[i][j]);
      printf(" \n iscom= %d \n",iscom);

exit (0);
      }

  int sub1(int n)
  {
      iscom=n;
  }
