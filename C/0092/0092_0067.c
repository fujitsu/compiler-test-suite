#include <stdio.h>

int main( ) {
 int    fa;
 float  fb,fc,fi,fsub0( ),fsub1( );
 int    da;
 double  db,dc,di,dsub0( ),dsub1( );
 int    lda;
#ifdef NO_LONG_DOUBLE
 double  ldb,ldc,ldi,ldsub0( ),ldsub1( );
#else
 long double  ldb,ldc,ldi,ldsub0( ),ldsub1( );
#endif
        fi=1.111e+1;fb=fsub0(fi);fc=fsub1(fi);
 fa=fb==fc;
        if (fa) printf("** (01)** NG\n");
        else    printf("** (01)** OK\n");
 fa=fb!=fc;
        if (fa) printf("** (02)** OK\n");
        else    printf("** (02)** NG\n");
 fa=fb<=fc;
        if (fa) printf("** (03)** NG\n");
        else    printf("** (03)** OK\n");
 fa=fb>=fc;
        if (fa) printf("** (04)** OK\n");
        else    printf("** (04)** NG\n");
 fa=fb<fc;
        if (fa) printf("** (05)** NG\n");
        else    printf("** (05)** OK\n");
 fa=fb>fc;
        if (fa) printf("** (06)** OK\n");
        else    printf("** (06)** NG\n");

        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=db==dc;
        if (da) printf("** (07)** NG\n");
        else    printf("** (07)** OK\n");
 da=db!=dc;
        if (da) printf("** (08)** OK\n");
        else    printf("** (08)** NG\n");
 da=db<=dc;
        if (da) printf("** (09)** NG\n");
        else    printf("** (09)** OK\n");
 da=db>=dc;
        if (da) printf("** (10)** OK\n");
        else    printf("** (10)** NG\n");
 da=db<dc;
        if (da) printf("** (11)** NG\n");
        else    printf("** (11)** OK\n");
 da=db>dc;
        if (da) printf("** (12)** OK\n");
        else    printf("** (12)** NG\n");

        ldi=1.111e+1;ldb=ldsub0(ldi);ldc=ldsub1(ldi);
 lda=ldb==ldc;
        if (lda) printf("** (13)** NG\n");
        else     printf("** (13)** OK\n");
 lda=ldb!=ldc;
        if (lda) printf("** (14)** OK\n");
        else     printf("** (14)** NG\n");
 lda=ldb<=ldc ;
        if (lda) printf("** (15)** NG\n");
        else     printf("** (15)** OK\n");
 lda=ldb>=ldc;
        if (lda) printf("** (16)** OK\n");
        else     printf("** (16)** NG\n");
 lda=ldb<ldc;
        if (lda) printf("** (17)** NG\n");
        else     printf("** (17)** OK\n");
 lda=ldb>ldc;
        if (lda) printf("** (18)** OK\n");
        else     printf("** (18)** NG\n");
 fa=fsub0==fsub1;
        if (fa) printf("** (19)** NG\n");
        else    printf("** (19)** OK\n");
 fa=fsub0!=fsub1;
        if (fa) printf("** (20)** OK\n");
        else    printf("** (20)** NG\n");
 fa=fsub0<=fsub1;
        if (fa) printf("** (21)** OK\n");
        else    printf("** (21)** NG\n");
 fa=fsub0>=fsub1;
        if (fa) printf("** (22)** NG\n");
        else    printf("** (22)** OK\n");
 fa=fsub0<fsub1;
        if (fa) printf("** (23)** OK\n");
        else    printf("** (23)** NG\n");
 fa=fsub0>fsub1;
        if (fa) printf("** (24)** NG\n");
        else    printf("** (24)** OK\n");

        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=dsub0==dsub1;
        if (da) printf("** (25)** NG\n");
        else    printf("** (25)** OK\n");
 da=dsub0!=dsub1;
        if (da) printf("** (26)** OK\n");
        else    printf("** (26)** NG\n");
 da=dsub0<=dsub1;
        if (da) printf("** (27)** NG\n");
        else    printf("** (27)** OK\n");
 da=dsub0>=dsub1;
        if (da) printf("** (28)** OK\n");
        else    printf("** (28)** NG\n");
 da=dsub0<dsub1;
        if (da) printf("** (29)** NG\n");
        else    printf("** (29)** OK\n");
 da=dsub0>dsub1;
        if (da) printf("** (30)** OK\n");
        else    printf("** (30)** NG\n");

        ldi=1.111e+1;ldb=ldsub0(ldi);ldc=ldsub1(ldi);
 lda=ldsub0==ldsub1;
        if (lda) printf("** (31)** NG\n");
        else     printf("** (31)** OK\n");
 lda=ldsub0!=ldsub1;
        if (lda) printf("** (32)** OK\n");
        else     printf("** (32)** NG\n");
 lda=ldsub0<=ldsub1 ;
        if (lda) printf("** (33)** NG\n");
        else     printf("** (33)** OK\n");
 lda=ldsub0>=ldsub1;
        if (lda) printf("** (34)** OK\n");
        else     printf("** (34)** NG\n");
 lda=ldsub0<ldsub1;
        if (lda) printf("** (35)** NG\n");
        else     printf("** (35)** OK\n");
 lda=ldsub0>ldsub1;
        if (lda) printf("** (36)** OK\n");
        else     printf("** (36)** NG\n");
}
#ifdef NO_LONG_DOUBLE
double ldsub1(i) double i;{
#else
long double ldsub1(i) long double i;{
#endif
 
 return(i*i);
}
#ifdef NO_LONG_DOUBLE
double ldsub0(i) double i;{
#else
long double ldsub0(i) long double i;{
#endif
 
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
