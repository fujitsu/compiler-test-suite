#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
  {
    double   a[100],b[100],c[100],d[100];
    int      i;
    
    for(i=0;i<100;i++) {
      a[i]=.3;
      b[i]=.7;
      c[i]=.9;
      d[i]=.11;
    }	
  
    for(i=0;i<99;i++) {
      d[i]=a[i]*(b[i]-1);
      a[i+1]=(d[i]-1+i)/(c[i]+1);
    }      
    d[99]+=a[10];

    printf("%d\n A => ",i);
    for(i=0;i<100;i++) printf("%g ",a[i]);
    printf("\n B => ");
    for(i=0;i<100;i++) printf("%g ",b[i]);
    printf("\n C=> ");
    for(i=0;i<100;i++) printf("%g ",c[i]);
    printf("\n D => ");
    for(i=0;i<100;i++) printf("%g ",d[i]);
    printf("\n");
    exit(0);
  }
