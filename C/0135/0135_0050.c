#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int  ii[30];
int main()
  {
    int  id;
    int *ia;
    char sa[10]={'1','2'};
    int  imx=0;
    int  i,j;

    ia=&ii[10];
    for(i=-10;i<20;i++) ia[i]=i;
    for(i=1;i<10;i++) {
      ia[i]=atoi(sa);
      if( ia[i+1] >= 0 ) ia[i]=fabs(ia[i]);
      else               ia[i]=(-1)*(fabs(ia[i]));
      imx=(ia[i]>imx) ? ia[i]:imx;
    }
    printf("IMX ==> %d \n",imx);
    exit(0);
  }  
