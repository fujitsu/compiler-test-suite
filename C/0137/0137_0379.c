#include <stdlib.h>
#include <math.h>
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
        if (fa) printf("** dpmk2110-(01)** NG\n");
        else    printf("** dpmk2110-(01)** OK\n");
 fa=fb!=fc;
        if (fa) printf("** dpmk2110-(02)** OK\n");
        else    printf("** dpmk2110-(02)** NG\n");
 fa=fb<=fc;
        if (fa) printf("** dpmk2110-(03)** NG\n");
        else    printf("** dpmk2110-(03)** OK\n");
 fa=fb>=fc;
        if (fa) printf("** dpmk2110-(04)** OK\n");
        else    printf("** dpmk2110-(04)** NG\n");
 fa=fb<fc;
        if (fa) printf("** dpmk2110-(05)** NG\n");
        else    printf("** dpmk2110-(05)** OK\n");
 fa=fb>fc;
        if (fa) printf("** dpmk2110-(06)** OK\n");
        else    printf("** dpmk2110-(06)** NG\n");
        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=db==dc;
        if (da) printf("** dpmk2110-(07)** NG\n");
        else    printf("** dpmk2110-(07)** OK\n");
 da=db!=dc;
        if (da) printf("** dpmk2110-(08)** OK\n");
        else    printf("** dpmk2110-(08)** NG\n");
 da=db<=dc;
        if (da) printf("** dpmk2110-(09)** NG\n");
        else    printf("** dpmk2110-(09)** OK\n");
 da=db>=dc;
        if (da) printf("** dpmk2110-(10)** OK\n");
        else    printf("** dpmk2110-(10)** NG\n");
 da=db<dc;
        if (da) printf("** dpmk2110-(11)** NG\n");
        else    printf("** dpmk2110-(11)** OK\n");
 da=db>dc;
        if (da) printf("** dpmk2110-(12)** OK\n");
        else    printf("** dpmk2110-(12)** NG\n");
        ldi=1.111e+1;ldb=ldsub0(ldi);ldc=ldsub1(ldi);
 lda=ldb==ldc;
        if (lda) printf("** dpmk2110-(13)** NG\n");
        else     printf("** dpmk2110-(13)** OK\n");
 lda=ldb!=ldc;
        if (lda) printf("** dpmk2110-(14)** OK\n");
        else     printf("** dpmk2110-(14)** NG\n");
 lda=ldb<=ldc ;
        if (lda) printf("** dpmk2110-(15)** NG\n");
        else     printf("** dpmk2110-(15)** OK\n");
 lda=ldb>=ldc;
        if (lda) printf("** dpmk2110-(16)** OK\n");
        else     printf("** dpmk2110-(16)** NG\n");
 lda=ldb<ldc;
        if (lda) printf("** dpmk2110-(17)** NG\n");
        else     printf("** dpmk2110-(17)** OK\n");
 lda=ldb>ldc;
        if (lda) printf("** dpmk2110-(18)** OK\n");
        else     printf("** dpmk2110-(18)** NG\n");
 fa=fsub0==fsub1;
        if (fa) printf("** dpmk2110-(19)** NG\n");
        else    printf("** dpmk2110-(19)** OK\n");
 fa=fsub0!=fsub1;
        if (fa) printf("** dpmk2110-(20)** OK\n");
        else    printf("** dpmk2110-(20)** NG\n");
 fa=fsub0<=fsub1;
        if (fa) printf("** dpmk2110-(21)** OK\n");
        else    printf("** dpmk2110-(21)** NG\n");
 fa=fsub0>=fsub1;
        if (fa) printf("** dpmk2110-(22)** NG\n");
        else    printf("** dpmk2110-(22)** OK\n");
 fa=fsub0<fsub1;
        if (fa) printf("** dpmk2110-(23)** OK\n");
        else    printf("** dpmk2110-(23)** NG\n");
 fa=fsub0>fsub1;
        if (fa) printf("** dpmk2110-(24)** NG\n");
        else    printf("** dpmk2110-(24)** OK\n");
        di=1.111e+1;db=dsub0(di);dc=dsub1(di);
 da=dsub0==dsub1;
        if (da) printf("** dpmk2110-(25)** NG\n");
        else    printf("** dpmk2110-(25)** OK\n");
 da=dsub0!=dsub1;
        if (da) printf("** dpmk2110-(26)** OK\n");
        else    printf("** dpmk2110-(26)** NG\n");
 da=dsub0<=dsub1;
        if (da) printf("** dpmk2110-(27)** NG\n");
        else    printf("** dpmk2110-(27)** OK\n");
 da=dsub0>=dsub1;
        if (da) printf("** dpmk2110-(28)** OK\n");
        else    printf("** dpmk2110-(28)** NG\n");
 da=dsub0<dsub1;
        if (da) printf("** dpmk2110-(29)** NG\n");
        else    printf("** dpmk2110-(29)** OK\n");
 da=dsub0>dsub1;
        if (da) printf("** dpmk2110-(30)** OK\n");
        else    printf("** dpmk2110-(30)** NG\n");
        ldi=1.111e+1;ldb=ldsub0(ldi);ldc=ldsub1(ldi);
 lda=ldsub0==ldsub1;
        if (lda) printf("** dpmk2110-(31)** NG\n");
        else     printf("** dpmk2110-(31)** OK\n");
 lda=ldsub0!=ldsub1;
        if (lda) printf("** dpmk2110-(32)** OK\n");
        else     printf("** dpmk2110-(32)** NG\n");
 lda=ldsub0<=ldsub1 ;
        if (lda) printf("** dpmk2110-(33)** NG\n");
        else     printf("** dpmk2110-(33)** OK\n");
 lda=ldsub0>=ldsub1;
        if (lda) printf("** dpmk2110-(34)** OK\n");
        else     printf("** dpmk2110-(34)** NG\n");
 lda=ldsub0<ldsub1;
        if (lda) printf("** dpmk2110-(35)** NG\n");
        else     printf("** dpmk2110-(35)** OK\n");
 lda=ldsub0>ldsub1;
        if (lda) printf("** dpmk2110-(36)** OK\n");
        else     printf("** dpmk2110-(36)** NG\n");
exit (0);
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
