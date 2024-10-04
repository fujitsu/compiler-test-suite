#include<stdio.h>
    static int arr[] = { 0,1,2,3,4 };
    static int *p = &arr[0];
int main()
{
    printf("*** \n");

    if(*(p+1) == 1)
        printf("OK\n");
    else
        printf("NG\n");

    printf("*** \n");
}
