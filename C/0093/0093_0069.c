#include <stdio.h>

int main()
{
    long long int a,b,c;

#if _WIN32 || __x86_64__ || i386 || __aarch64__
#define PRINT(str,i,j) printf(str,j,i);
#else
#define PRINT(str,i,j) printf(str,i,j);
#endif

    a= 0x0000000100000000LL;  
    b= 0xffffffff80000000LL;
    c = a * b;
    PRINT("  2**32  * (-2**31) = %x %x \n",
            *(int  *)(&c),*((int *)(&c)+1));

    c = b * a;
    PRINT("(-2**31) *   2**32  = %x %x \n",
            *(int  *)(&c),*((int *)(&c)+1));

    a= 0xffffffff00000000LL;  
    b= 0x0000000080000000LL;

    c = a * b;
    PRINT("(-2**32) *   2**31  = %x %x \n",
            *(int  *)(&c),*((int *)(&c)+1));

    c = b * a;
    PRINT("  2**31  * (-2**32) = %x %x \n",
            *(int  *)(&c),*((int *)(&c)+1));

}
