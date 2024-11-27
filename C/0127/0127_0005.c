#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define FALSE 0
#define TRUE  1
#define LIMIT 1.0E-14
int main()                               
     {
     double circle[100];             
     double cm2[100];
     double pai;
     double wk1;
     double wk[10000];
     int    i;
     int    j;
     int    addflg;
     pai=0;
     wk1=16*5;
     addflg=TRUE;
     i=1;
     for(j=0;j<10000;j++)
        {
        wk[j]=j;
        }
     for(j=0;j<100;j++)
        {
        circle[j]=j+1.0;
        cm2[j]=0.0;
        }
     while(wk[9999]>LIMIT)                
          {
          wk1/=25;
          wk[9999]=wk1/i;
          if(addflg)
            {
            pai+=wk[9999];
            }
          else
            {
            pai-=wk[9999];
            }
          addflg=!addflg;
          i+=2;
          }
      wk1=4*239;
     for(j=0;j<10000;j++)
        {
        wk[j]=j;
        }
      addflg=FALSE;
      i=1;
      while(wk[9999]>LIMIT)
           {
           wk1=wk1/239/239;
           wk[9999]=wk1/i;
           if(addflg)
             {
             pai=pai+wk[9999];
             }
           else
             {
             pai=pai-wk[9999];
             }
           addflg=!addflg;
           i=i+2;
           }
       printf("pai=%.14f \n",pai);        
       for(j=0;j<100;j++)
          {
          cm2[j]=pai*pow(circle[j],2.0);
          }
       printf("*********************\n"); 
       printf("*   r  = (cm2)      *\n");
       printf("*********************\n");
       printf(" \n");
       for(j=0;j<100;j++)
          {
          printf("%d = %.8f \n",j,cm2[j]);
          }
	exit(0);
       }
       
