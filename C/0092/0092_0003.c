#include <stdio.h>


int foo()
{
  long double    r16;  
  long double    ar16[10];  
  long double    *pr16;  
  long double   pr16_area[sizeof(long double)];  
                       pr16=pr16_area;
                       *pr16=ar16[0];
  r16 = *pr16;                   
                       if (r16==1.1e+20) printf("** (8) ** OK\n");
                       else              printf("** (8) ** NG r16=%e\n", r16);                                
}  
int main()
{
	printf("*** K017-4 (examine object code) ***\n") ;
}
