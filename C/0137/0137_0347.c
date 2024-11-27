#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdio.h>
int main( ) {
  int    sub( );
  extern int    sube( );
  int           (*fp)( );
  static int    (*sp)( );
  int    i,*j,*k;
  char   ar[100],*ap;
  struct a { 
    char  as[10];
   } si1,*sp1;
                     i=10;
  fp =sub;                        
                     i  =(*fp)(i);
                     if (i==100) printf("** dpmk2005-(1) ** OK\n");
                     else        printf("** dpmk2005-(1) ** NG i=%d\n",i);
                     i=10;
  sp =sub;
                     i  =(*sp)(i);
                     if (i==100) printf("** dpmk2005-(2) ** OK\n");
                     else        printf("** dpmk2005-(2) ** NG i=%d\n",i);
                     i=10;
  fp =sube;                       
                     i  =(*fp)(i);
                     if (i==100) printf("** dpmk2005-(3) ** OK\n");
                     else        printf("** dpmk2005-(3) ** NG i=%d\n",i);
                     i=10;
  sp =sube;
                     i  =(*sp)(i);
                     if (i==100) printf("** dpmk2005-(4) ** OK\n");
                     else        printf("** dpmk2005-(4) ** NG i=%d\n",i);
  j  =&i;            
                     if (*j==100) printf("** dpmk2005-(5) ** OK\n");
                     else        printf("** dpmk2005-(5) ** NG j=%d\n",j);
                     memset(si1.as,'x',10);
  sp1=&si1;          
                     if (sp1->as[0]=='x') printf("** dpmk2005-(6) ** OK\n");
                     else                 printf("** dpmk2005-(6) ** NG sp1->as[0]=%c\n",sp1->as[0]);
                     memset(ar,'y',100);
  ap=ar;      
                     if (*(ap+99)=='y') printf("** dpmk2005-(7) ** OK\n");
                     else               printf("** dpmk2005-(7) ** NG *ap=%s\n",ap);
                     memset(sp1->as,'z',10);
  ap =sp1->as;
                     if (*ap=='z') printf("** dpmk2005-(8) ** OK\n");
                     else          printf("** dpmk2005-(8) ** NG *ap=%s\n",ap);
                     sp1->as[9]='a';i=9;
  ap =&(sp1->as[i]);
                     if (*ap=='a') printf("** dpmk2005-(9) ** OK\n");
                     else          printf("** dpmk2005-(9) ** NG *ap=%s\n",ap);
exit (0);
}
int sub(i) int i;{
                  return i*i;
}  
int sube(i) int i;{
                  return i*i;
}  
