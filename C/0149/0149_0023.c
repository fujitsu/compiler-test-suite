#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    static int arr[] = { 0,1,2,3,4 };
    static int *p = &arr[0];
int main()
{
    printf("*** CATEGORY STARTED ***\n");
 
    if(*(p+1) == 1)
        printf("OK\n");
    else
        printf("NG\n");
 
    printf("*** CATEGORY ENDED ***\n");
exit (0);
}
