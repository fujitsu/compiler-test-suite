#include <stdio.h>


#if !defined(__hal)
#define  __int32 int
#endif
int main()
{
        const static __int32     min=0x80000000;
        __int32  x;
        x=0x80000000;
        if(x==min) printf("OK\n");
}

