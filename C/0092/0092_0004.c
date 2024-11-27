#include <stdio.h>

int main( ) {
 int    fa;
 float  fb,fc,fi,fsub0( ),fsub1( );
 int    da;
 double  db,dc,di,dsub0( ),dsub1( );
 int    lda;
 long double  ldb,ldc,ldi,ldsub0( ),ldsub1( );
        fi=1.111e+1;fb=fsub0(fi);fc=fsub1(fi);
 fa=fb==fc;
        if (fa) printf("** (01)** NG\n");
        else    printf("** (01)** OK\n");
        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=db==dc;
        if (da) printf("** (07)** NG\n");
        else    printf("** (07)** OK\n");
        ldi=1.111e+1;ldb=ldsub0(ldi);ldc=ldsub1(ldi);
 lda=ldb==ldc;
        if (lda) printf("** (13)** NG\n");
        else     printf("** (13)** OK\n");
        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=dsub0==dsub1;
        if (da) printf("** (25)** NG\n");
        else    printf("** (25)** OK\n");
}
long double ldsub1(i) long double i;{
 return(i*i);
}
long double ldsub0(i) long double i;{
return(i*i*i);
}
double dsub1(i) double i;{
 return(i+i);
}
double dsub0(i) double i;{
 return(i*i);
}
float fsub0(i) float i;{
 return(i*i);
}
float fsub1(i) float i;{
 return(i+i);
}
