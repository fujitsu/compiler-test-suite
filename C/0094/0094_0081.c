#include  <stdio.h>
int b[10];
int *a = b;
int main()
{
printf(" start\n");
*a = 10;
printf(" end\n");
}

