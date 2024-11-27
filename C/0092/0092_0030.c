#include <stdio.h>
static const char        x[500000]={'a'};
static const char        y[500000]={'b'};
static const char        z[500000]={'c'};
int main( ) {
static const char        xxxx[500000]={'a'};
static const char        yyyy[500000]={'b'};
static const char        zzzz[500000]={'c'};
       if (x[0]=='a')    printf(" ok    -(1)\n");
       if (y[0]=='b')    printf(" ok    -(2)\n");
       if (z[0]=='c')    printf(" ok    -(3)\n");
       if (xxxx[0]=='a') printf(" ok    -(4)\n");
       if (yyyy[0]=='b') printf(" ok    -(5)\n");
       if (zzzz[0]=='c')  printf(" ok    -(6)\n");
       if (x[0]==xxxx[0]) printf(" ok    -(7)\n");
       if (y[0]==yyyy[0]) printf(" ok    -(8)\n");
       if (z[0]==zzzz[0]) printf(" ok    -(9)\n");
}

  
