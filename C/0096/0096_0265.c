#include <stdio.h>
int sub4();
int sub3();
int sub2();
int sub1();

int main()
{
  int a=0,b,c,d,e,max,i;
  
  for( i=0;i<100001;i++ )
    max = ((a) == (i) ? (c = i) : (c = sub1()));
  printf("max=%d\n",max);
  
  for( i=0;i<100001;i++,a++ ){
    if( i==1000 ) a=0;
    max = ((a) == (i) ? (c = i) : (c = sub2()));
  }
  printf("max=%d\n",max);
  
  a=0;
  for( i=0;i<100001;i++ )
    max = ((a) == (i) ? (a = i) : (a = sub3()));
  printf("max=%d\n",max);
  
  for( i=0;i<100001;i++,a++ )
    max = ((a) == (i) ? (a = i) : (a = sub4()));
  printf("max=%d\n",max);
}
int sub1()
{
  return 1;
}
int sub2()
{
  return 1;
}
int sub3()
{
  return 1;
}
int sub4()
{
  return 1;
}
