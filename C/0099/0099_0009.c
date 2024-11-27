#include <stdio.h>
  
#include <limits.h>
#if defined(__sparc)
#if defined(__linux)
#include <float.h>
#else
#include <ieeefp.h>
#endif
#else
#include <float.h>
#endif
int main()
{
  int i,j,pass=0;

  double test_data[10] ;
  double zero =0.0;
  double one  =1.0;
  double snan;
  *(long long *)&snan = 0x7ff0000000000001;
  test_data[0] = (snan);
  test_data[1] = (zero/zero);           
  test_data[2] = (-DBL_MAX*10.0);
  test_data[3] = (DBL_MAX*10.0);
  test_data[4] = (-DBL_MIN/10.0);
  test_data[5] = (DBL_MIN/10.0);
  test_data[6] = (-zero);
  test_data[7] = ( zero);
  test_data[8] = (-1.0);
  test_data[9] = (1.0);

  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      if( (test_data[i] >= test_data[j]) ) {
	printf("(%d,%d)\n",i,j);
	pass++;
      } 
    }
  }
  if( pass == 37 ) {
    printf("pass (%d)\n",pass);
  }
  else {
    printf("NG   (%d)\n",pass);
  }
}
