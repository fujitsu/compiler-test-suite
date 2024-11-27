#include <stdio.h>

int main()
{
  int a=1,b,c,d,e,max,i;

  for( i=0;i<100001;i++ )
    max = ((a) <= (i) ? (c = i) : (c = i+i));
  printf("max=%d\n",max);

  for( i=0;i<100001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) <= (i) ? (c = i) : (c = i+i));
  }
  printf("max=%d\n",max);

  a=1;
  for( i=0;i<100001;i++ )
    max = ((a) <= (i) ? (a = i) : (a = i));
  printf("max=%d\n",max);

  a=1;
  for( i=0;i<100001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) <= (i) ? (a = i+1) : (a = i+1));
  }
  printf("max=%d\n",max);

}
