#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  long int m[10]={5,10,0,8,11,2,-5,1,15,10};
  long int n[10]={0,0,0,0,0,0,0,0,0,0};
  long int ma=0,mi,i,j,k=0;

  mi=m[0];

  for ( i=1; i<9; i++ ){
    ma=(ma>m[i])?ma:m[i];
    n[i]=m[i+1]-m[i-1];
    mi=(mi<n[i])?mi:n[i];
    m[i+1]=m[i+1]+n[i-1];
  }

  for ( i=0; i<10; i++ )
      printf("m[%ld] = %ld ,n[%ld] = %ld\n",i,m[i],i,n[i]);

  for ( i=1; i<10; i++ ){
    m[i]=k;
    n[i]=i*2;
    for ( j=1; j<10; j++ ){
      m[j]=m[j]+n[i];
      k=k+1;
    }
  }

  for ( i=0; i<10; i++ )
      printf("m[%ld] = %ld ,n[%ld] = %ld\n",i,m[i],i,n[i]);

  k=4;j=-1;
  for ( i=1; i<10; i++ ){
    if ( i%2==0 ){
      j=j+1;
      m[j]=j;
      n[j]=m[j]*i;
    }else{
      k=k+1;
      m[k]=k;
      n[k]=m[k]*i;
    }
  }

  for ( i=0; i<10; i++ )
      printf("m[%ld] = %ld ,n[%ld] = %ld\n",i,m[i],i,n[i]);
  exit(0);
}
