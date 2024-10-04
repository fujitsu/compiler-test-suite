#include<stdio.h>
extern int a[3]={10,10,10};
int main()
{
  int a[3]={20,20,20};
  {
    extern int a[3];
    if( a[2]==10 )
      printf("\n");
  }
}
