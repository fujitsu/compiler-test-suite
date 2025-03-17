





#include <stdio.h>
#include <string.h>

static union {
    int a;
    char *p;
};
int main()
{
    union { 
        int b;
        char *q;
    };
    char data[10]= "domdom";

    a = sizeof(data);
    b = 10;
    if( a == b )
    {
        p = data;
        q = "domdom";
        if( !strcmp(p,q) )
            printf("ok\n");
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}
