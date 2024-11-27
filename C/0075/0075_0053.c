#include <stdio.h>
int foo(int j,int k)
{
     int i[10];
     i[j]=1;
     if ( j ) j=j+i[k];
     else     j++;
     return j;
}
int main() { printf("%d\n",foo(1,1)) ; }
