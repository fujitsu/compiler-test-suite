#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
    int c[10],d[10],e[10],i,j,k;
int main() {
      for(i=0;i<10;i++) {
        c[i]=0;
        d[i]=0;
        e[i]=0;
      }
      j=4;
      for(i=0;i<5;i++) {
        j=j+1;
        k=i+5;
        c[i]=i;
        d[j]=k;
      }
      for(i=0;i<10;i++) {
        e[i]=c[i]+d[i];
      }
      for(i=0;i<10;i++) {
        if(e[i]!=i) {
          goto p50;
        }
      }
      printf("okokok 1-1 of snkpi04 okokok\n");
      goto p60;
      p50:printf("ngngng 1-1 of snkpi04 ngngng\n");
      p60:;
      for(i=0;i<10;i++) {
        c[i]=0;
        d[i]=0;
        e[i]=0;
      }
      j=5;
      for(i=9;i>4;i--) {
        j=j-1;
        k=i-5;
        c[i]=i;
        d[j]=k;
      }
      for(i=0;i<10;i++) {
        e[i]=c[i]+d[i];
      }
      for(i=0;i<10;i++) {
        if(e[i]!=i) {
          goto p150;
        }
      }
      printf("okokok 1-2 of snkpi04 okokok\n");
      goto p160;
      p150:printf("ngngng 1-2 of snkpi04 ngngng\n");
      p160:;
      for(i=0;i<10;i++) {
        c[i]=0;
        d[i]=0;
        e[i]=0;
      }
      j=4;
      for(i=0;i<5;i++) {
        j=j+1;
        k=j-5;
        c[i]=k;
        d[j]=j;
      }
      for(i=0;i<10;i++) {
        e[i]=c[i]+d[i];
      }
      for(i=0;i<10;i++) {
        if(e[i]!=i) {
          goto p250;
        }
      }
      printf("okokok 1-3 of snkpi04 okokok\n");
      goto p260;
      p250:printf("ngngng 1-3 of snkpi04 ngngng\n");
      p260:;
      for(i=0;i<10;i++) {
        c[i]=0;
        d[i]=0;
        e[i]=0;
      }
      j=5;
      for(i=9;i>4;i--) {
        j=j-1;
        k=j+5;
        c[i]=k;
        d[j]=j;
      }
      for(i=0;i<10;i++) {
        e[i]=c[i]+d[i];
      }
      for(i=0;i<10;i++) {
        if(e[i]!=i) {
          goto p350;
        }
      }
      printf("okokok 1-4 of snkpi04 okokok\n");
      goto p360;
      p350:printf("ngngng 1-4 of snkpi04 ngngng\n");
      p360:;
exit (0);
    }
