#include <stdio.h>
int main()
{
  double d = 1.0, f = 2.0;
  _Complex cd;
  cd =  *(_Complex *)&(struct {double r,i; }){ d ,  f } ;
  printf("%e %e\n", *(double *)&cd, *((double *)&cd + 1)); 
  cd =  *(_Complex *)&(struct {double r,i; }){ 2.0 ,  3.0 } ;
  printf("%e %e\n", *(double *)&cd, *((double *)&cd + 1)); 
}
