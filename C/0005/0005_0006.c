#include <stdio.h>
#include <math.h>

int main(void){
  float x = 1.0f;

  int ret = _Generic(x, float: __fpclassifyf(x),
		        double: __fpclassify(x),
                        default: __fpclassifyl(x) );

  if( ret == FP_NORMAL){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
