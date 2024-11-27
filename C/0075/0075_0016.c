#include <stdio.h>
int main()
{
        unsigned int i ;
        int k;
        k=0 ;
        for (i=0 ; i<=1073741824 ;i=i+2147483647)
                k+=1;
        printf("k=%d \n",k) ;
}
