#include <stdio.h>

int main()
{
  int a=0,b,c,d,e,max,i;

  for( i=0;i<100001;i++ )
    max = ((a) != (i) ? (c = i) : (c = i+i));
  printf("max=%d\n",max);

  for( i=0;i<100001;i++,a++ ){
    if( i==1000 ) a=0;
    max = ((a) != (i) ? (c = i) : (c = i+i));
  }
  printf("max=%d\n",max);

  a=0;
  for( i=0;i<100001;i++ )
    max = ((a) != (i) ? (a = i) : (a = i+i));
  printf("max=%d\n",max);

  for( i=0;i<100001;i++,a++ )
    max = ((a) != (i) ? (a = i) : (a = i+i));
  printf("max=%d\n",max);

}
