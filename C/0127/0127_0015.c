#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
  {
  double sub(double t);
  double a[10],b[10],c[10][10],t=0,total;
  long int i,j,k;
  for(i=0;i<10;i++){
    b[i] = (double)i * 2.2 + 3.85;
  }
  for(i=0;i<10;i++){
      a[i] = b[i] * (double)i;
      for(j=0;j<10;j++)
         c[i][j] = a[i] * b[i];
  }
  for(i=0;i<10;i++){
     t += a[i];
  }
loop:
  for(j=9,i=0;j>=0,i<=9;j--,i++){
     c[j][i] = (a[j] + b[j]) * (double)i;
  }
  for(j=0,i=9;j<10,i>=0;j++,i--){
     if (b[i]!=0.0){
        t = t + c[j][i] / b[i];
     }
     else{
        t = 0.0;
        goto loop1;
     }
  }
  for(j=0,i=0;j<5,i<=4;j++,i++){
     if (c[j][i] > 20.0){
        for(k=0;k<10;k++){
           b[k]=0;
        }
        goto loop;
     }
  }
loop1:
  total=sub(t);
  printf("\n");
  printf("total=%g",total);
  printf("\n");
	exit(0);
 }

double sub(double t)
  {
  long int i,j,l,n=0;
  double a[10][10],b[100];
  char   c[100];
  for(j=0;j<10;j++){
     for(i=0;i<10;i++){
        a[j][i] = 0.0;
     }
  }
  for(i=0;i<100;i++){
     b[i] = 0.0;
     c[i] = ' ';
  }
  l = 100;
  for(j=0;j<10;j++){
     for(i=0;i<=9;i++){
        if ((i+j)!=0){
           if(l%(10*j+i)==0) a[j][i] = 1.0;
        }
     }
  }
  for(j=9;j>=0;j--){
     for(i=9;i>-1;i--){
        if(a[j][i]==1) b[10*j+i] = (double)(10*j+i);
     }
  }
  for(i=0;i<100;i++){
     if(b[i] != 0.0)
      {
       if(b[i] < 10.0)
         {
          c[n]='0';
          n=n+3;
         }
       else
         {
          c[n]='0';
          c[n+1]='0';
          n=n+3;
         }
      }
   }
  for(i=0;i<n;i=i+2){
    if(i==0) printf("\n");
    printf("%c%c",c[i],c[i+1]);
    printf("\n");
   }
  for(i=0;i<100;i++){
    t=t+b[i];
   }
   return(t);
 }
