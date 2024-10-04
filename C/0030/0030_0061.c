#include <stdio.h>
int main()
{
  int i;
  long double  a[10]={0,1,2,3,4,5,6,7,8,9};

  for(i=0;i<10;i++) {
    if(a[i]==i) printf("### ok ###\n");
    else        printf("### ng ###\n");
  }
}
