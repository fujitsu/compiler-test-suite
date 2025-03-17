




#include <stdio.h>

int x = 0;

void f(int *p, int i)
{
    if( *p == i ) x++; 
}

void f(const int *pc, int i)
{
    if( *pc == i ) x++;
}

void f(volatile int *pv, int i)
{
    if( *pv == i ) x++;
}
int main()
{
    int i; 
    const int ci = 3;
    volatile int vi; 

    i = 5;
    vi = 2;

    f(&i,5);
    if( x == 1 )
    {
        f(&ci,3);
        if( x == 2 )
        {       
            f(&vi,2);
            if( x == 3 )
                printf("ok\n");
            else
                printf("ng\n");
        }
        else
            printf("ng\n");
    }    
    else
        printf("ng\n");
}
