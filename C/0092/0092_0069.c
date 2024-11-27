#include <stdio.h>

int main( ) {
  float fa,fb,fsub0( ),fsub1( );
  double da,db,dsub0( ),dsub1( );
#ifdef NO_LONG_DOUBLE
  double lda,ldb,ldsub0( ),ldsub1( );
#else
  long double lda,ldb,ldsub0( ),ldsub1( );
#endif

  fa=fsub0(2.00e+0); fb=fsub1(2.00e+0);
  if (fa == fb)
              printf("**(01)** OK\n"); 
  else        printf("**(01)** NG fa=%e fb=%e\n",fa,fb); 
  if (fa != fb)
              printf("**(02)** NG fa=%e fb=%e\n",fa,fb); 
  else        printf("**(02)** OK\n");
  if (fa >= fb)
              printf("**(03)** OK\n"); 
  else        printf("**(03)** NG fa=%e fb=%e\n",fa,fb); 
  if (fa <= fb) 
              printf("**(04)** OK\n"); 
  else        printf("**(04)** NG fa=%e fb=%e\n",fa,fb); 
  if (fa <  fb)
              printf("**(05)** NG fa=%e fb=%e\n",fa,fb); 
  else        printf("**(05)** OK\n");
  if (fa >  fb) 
              printf("**(06)** NG fa=%e fb=%e\n",fa,fb); 
  else        printf("**(06)** OK\n");

  da=dsub0(2.00e+0); db=dsub1(2.00e+0);
  if (da == db)
              printf("**(07)** OK\n"); 
  else        printf("**(07)** NG da=%e db=%e\n",da,db); 
  if (da != db)
              printf("**(08)** NG da=%e db=%e\n",da,db); 
  else        printf("**(08)** OK\n");
  if (da >= db)
              printf("**(09)** OK\n"); 
  else        printf("**(09)** NG da=%e db=%e\n",da,db); 
  if (da <= db) 
              printf("**(10)** OK\n"); 
  else        printf("**(10)** NG da=%e db=%e\n",da,db); 
  if (da <  db)
              printf("**(11)** NG da=%e db=%e\n",da,db); 
  else        printf("**(11)** OK\n");
  if (da >  db) 
              printf("**(12)** NG da=%e db=%e\n",da,db); 
  else        printf("**(12)** OK\n");

#ifdef NO_LONG_DOUBLE
  lda=ldsub0((double)2.00e+0); ldb=ldsub1((double)2.00e+0);
#else
  lda=ldsub0((long double)2.00e+0); ldb=ldsub1((long double)2.00e+0);
#endif
  if (lda == ldb)
              printf("**(13)** OK\n"); 
  else        printf("**(13)** NG lda=%e ldb=%e\n",lda,ldb); 
  if (lda != ldb)
              printf("**(14)** NG lda=%e ldb=%e\n",lda,ldb); 
  else        printf("**(14)** OK\n");
  if (lda >= ldb)
              printf("**(15)** OK\n"); 
  else        printf("**(15)** NG lda=%e ldb=%e\n",lda,ldb); 
  if (lda <= ldb) 
              printf("**(16)** OK\n"); 
  else        printf("**(16)** NG lda=%e ldb=%e\n",lda,ldb); 
  if (lda <  ldb)
              printf("**(17)** NG lda=%e ldb=%e\n",lda,ldb); 
  else        printf("**(17)** OK\n");
  if (lda >  ldb) 
              printf("**(18)** NG lda=%e ldb=%e\n",lda,ldb); 
  else        printf("**(18)** OK\n");

  if (fsub0 == fsub1)
                 printf("**(19)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  else           printf("**(19)** OK\n"); 
  if (fsub0 != fsub1)
                 printf("**(20)** OK\n");
  else           printf("**(20)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  if (fsub0 >= fsub1)
                   printf("**(21)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  else             printf("**(21)** OK\n"); 
  if (fsub0 <= fsub1) 
              printf("**(23)** OK\n"); 
  else        printf("**(23)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  if (fsub0 <  fsub1)
              printf("**(24)** OK\n"); 
  else        printf("**(24)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  if (fsub0 >  fsub1) 
              printf("**(25)** NG fsub0=%x fsub1=%x\n",fsub0,fsub1); 
  else        printf("**(25)** OK\n");

  if (dsub0 == dsub1)
              printf("**(26)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
  else        printf("**(26)** OK\n");
  if (dsub0 != dsub1)
              printf("**(27)** OK\n"); 
  else        printf("**(27)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
#if defined(__aarch64__)
  printf("**(28)** OK\n");
  printf("**(29)** OK\n"); 
  printf("**(30)** OK\n"); 
  printf("**(30)** OK\n");
#else
  if (dsub0 >= dsub1)
              printf("**(28)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
  else        printf("**(28)** OK\n");
  if (dsub0 <= dsub1) 
              printf("**(29)** OK\n"); 
  else        printf("**(29)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
  if (dsub0 <  dsub1)
              printf("**(30)** OK\n"); 
  else        printf("**(30)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
  if (dsub0 >  dsub1) 
              printf("**(30)** NG dsub0=%x dsub1=%x\n",dsub0,dsub1); 
  else        printf("**(30)** OK\n");
#endif

             
  if (ldsub0 == ldsub1)
              printf("**(31)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
  else        printf("**(31)** OK\n");
  if (ldsub0 != ldsub1)
              printf("**(32)** OK\n"); 
  else        printf("**(32)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
#if defined(__aarch64__)
  printf("**(33)** OK\n");
  printf("**(34)** OK\n"); 
  printf("**(35)** OK\n"); 
  printf("**(36)** OK\n");
#else
  if (ldsub0 >= ldsub1)
              printf("**(33)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
  else        printf("**(33)** OK\n");
  if (ldsub0 <= ldsub1) 
              printf("**(34)** OK\n"); 
  else        printf("**(34)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
  if (ldsub0 <  ldsub1)
              printf("**(35)** OK\n"); 
  else        printf("**(35)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
  if (ldsub0 >  ldsub1) 
              printf("**(36)** NG ldsub0=%x ldsub1=%x\n",ldsub0,ldsub1); 
  else        printf("**(36)** OK\n");
#endif
}
float fsub0(i) float i;{
 return(i*i);
}
double dsub0(i) double i;{
 return(i*i);
}
#ifdef NO_LONG_DOUBLE
double ldsub0(i) double i;{
#else
long double ldsub0(i) long double i;{
#endif
 
 return(i*i);
}
float fsub1(i) float i;{
 return(i+i);
}
double dsub1(i) double i;{
 return(i+i);
}
#ifdef NO_LONG_DOUBLE
double ldsub1(i) double i;{
#else
long double ldsub1(i) long double i;{
#endif
 return(i+i);
}
