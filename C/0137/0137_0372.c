#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
    float          r4;  
    double         r8;  
  long double    r16;  
    float          ar4[10];  
    double         ar8[10];  
  long double    ar16[10];  
    float          *pr4;  
    double         *pr8;  
  long double    *pr16;  
  struct  a {
      float         r_ar4[10];  
  } *sr4;
  struct  b {
      double        r_ar8[10];  
  } *sr8;
  struct  c {
      long double  r_ar16[10];  
  } *sr16;
    float         pr4_area[sizeof(float)];  
    double        pr8_area[sizeof(double)];  
  long double   pr16_area[sizeof(long double)];  
  struct a              sr4_area;  
  struct b              sr8_area;  
  struct c              sr16_area;  
  int              i;
                       for (i=0;i<10;i++) ar4[i]=10e+2;
  r4 = ar4[1];
                       if (r4==10e+2) printf("** dpmk2101-(1) ** OK\n");
                       else           printf("** dpmk2101-(1) ** NG r4=%e\n", r4);                                
                       pr4=pr4_area;
                       *pr4=ar4[0];
  r4 = *pr4; 
                       if (r4==10e+2) printf("** dpmk2101-(2) ** OK\n");
                       else           printf("** dpmk2101-(2) ** NG r4=%e\n", r4);                                
                       sr4=&sr4_area;
                       for (i=0;i<10;i++) sr4->r_ar4[i]=1.0e+9;i=0;
  r4 = sr4->r_ar4[i];  
                       if (r4==1.0e+9) printf("** dpmk2101-(3) ** OK\n");
                       else            printf("** dpmk2101-(3) ** NG r4=%e\n", r4);                                
                       for (i=0;i<10;i++) ar8[i]=9.999e+10;
  r8 = ar8[1];         
                       if (r8==9.999e+10)  printf("** dpmk2101-(4) ** OK\n");
                       else                printf("** dpmk2101-(4) ** NG r8=%e\n", r8);                                
                       pr8=pr8_area;
                       *pr8=ar8[0];
  r8 = *pr8;                   
                       if (r8==9.999e+10    ) printf("** dpmk2101-(5) ** OK\n");
                       else                   printf("** dpmk2101-(5) ** NG r8=%e\n", r8);                                
                       sr8=&sr8_area;
                       for (i=0;i<10;i++) sr8->r_ar8[i]=0.0001e+10;i=0;
  r8 = sr8->r_ar8[i];  
                       if (r8==0.0001e+10) printf("** dpmk2101-(6) ** OK\n");
                       else                printf("** dpmk2101-(6) ** NG r8=%e\n", r8);                                
                       for (i=0;i<10;i++) ar16[i]=1.1e+20;
  r16 = ar16[1];         
                       if (r16==1.1e+20)  printf("** dpmk2101-(7) ** OK\n");
                       else               printf("** dpmk2101-(7) ** NG r16=%e\n", r16);                                
                       pr16=pr16_area;
                       *pr16=ar16[0];
  r16 = *pr16;                   
                       if (r16==1.1e+20) printf("** dpmk2101-(8) ** OK\n");
                       else              printf("** dpmk2101-(8) ** NG r16=%e\n", r16);                                
                       sr16=&sr16_area;
                       for (i=0;i<10;i++) sr16->r_ar16[i]=1.1e+20;i=2;
  r16 = sr16->r_ar16[i];  
                       if (r16==1.1e+20) printf("** dpmk2101-(9) ** OK\n");
                       else              printf("** dpmk2101-(9) ** NG r16=%e\n", r16);                                
exit (0);
}  
