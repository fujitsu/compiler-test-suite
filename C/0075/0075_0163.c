
#include <stdio.h>
int sub(int a[],int b[])
{
    int i,j=0;
    j=j+1;	
    i=0;
    do { a[i] = 0; i++; } while( i<10 );
    j=j+1;	
    i=0;
    do { b[i] = 0; i++; } while( i<10 );
    printf("%d \n",j);
}
int main()
{
    int a[10],b[10];
    sub(a,b);
}
