
#include<stdio.h>
#include<math.h>
#include<complex.h>
#define IS_EQUAL_D(a,b) (a==b || (cabs(a-b)/cabs(a))<1E-14)

int main() {

  double   complex   z  = atan(1) * I;
  double  _Complex   ds = csin(z);
  double __complex__ dc = ccos(z);
  double   complex   dt = ctan(z);

  if(IS_EQUAL_D(dt, (ds / dc))) printf("*OK* \n");
  else                          printf("*NG* \n");

  fflush(stdout);

  return 0;
}
