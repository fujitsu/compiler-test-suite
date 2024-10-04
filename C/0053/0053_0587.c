#include<stdio.h>
extern int a[3];
extern int a[3]={10,10,10};
int main()
{
  if( a[2]==10 )
    printf("\n");
}
