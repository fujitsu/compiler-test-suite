#include <complex.h>
#include <stdarg.h>
#include <stdio.h>

#define TYPE_C8  8
#define TYPE_C16 16
#define TYPE_C32 32
#define MAX_ON_REG_C8  16
#define MAX_ON_REG_C16 8
#define MAX_ON_REG_C32 4

void va_arg_complex_print(int type, int num, ...) {
  float r4;
  double r8;
  long double r16;
  float _Complex c8;
  double _Complex c16;
  long double _Complex c32;
  va_list va_arg_list;
  int i;
  
  switch(type) {
  case TYPE_C8:
    printf("===== va_arg_complex_float =====\n");
    va_start(va_arg_list, num);
    r4 = (float)va_arg(va_arg_list, double);
    printf("r4     = %f\n", r4);
    for(i=0; i<num; i++) {
      c8 = va_arg(va_arg_list, float _Complex);
      printf("c8[%d]  = ( %f , %f )\n", i, crealf(c8), cimagf(c8));
    }
    va_end(va_arg_list);
    break;
  case TYPE_C16:
    printf("===== va_arg_complex_double =====\n");
    va_start(va_arg_list, num);
    r8 = va_arg(va_arg_list, double);
    printf("r8     = %f\n", r8);
    for(i=0; i<num; i++) {
      c16 = va_arg(va_arg_list, double _Complex);
      printf("c16[%d] = ( %f , %f )\n", i, creal(c16), cimag(c16));
    }
    va_end(va_arg_list);
    break;
  case TYPE_C32:
    printf("===== va_arg_complex_long_double =====\n");
    va_start(va_arg_list, num);
    r16 = va_arg(va_arg_list, long double);
    printf("r16    = %Lf\n", r16);
    for(i=0; i<num; i++) {
      c32 = va_arg(va_arg_list, long double _Complex);
      printf("c32[%d] = ( %Lf , %Lf )\n", i, creall(c32), cimagl(c32));
    }
    va_end(va_arg_list);
    break;
  default:
    break;
  }
  
  return;
}

int main(void) {
  float r4 = -1.0f;
  double r8 = -1.0;
  long double r16 = -1.0L;
  float _Complex c8[MAX_ON_REG_C8];
  double _Complex c16[MAX_ON_REG_C16];
  long double _Complex c32[MAX_ON_REG_C32];
  int n;
  
  for(n=0; n<MAX_ON_REG_C8; n++) {
    c8[n] = (float)n + (float)n * 1.0fi;
  }
  for(n=0; n<MAX_ON_REG_C16; n++) {
    c16[n] = (double)n + (double)n * 1.0i;
  }
  for(n=0; n<MAX_ON_REG_C32; n++) {
    c32[n] = (long double)n + (long double)n * 1.0Li;
  }
  
  va_arg_complex_print(TYPE_C8, MAX_ON_REG_C8, r4, 
		       c8[0],  c8[1],  c8[2],  c8[3],  c8[4],  c8[5],  c8[6],  c8[7], 
		       c8[8],  c8[9],  c8[10], c8[11], c8[12], c8[13], c8[14], c8[15]);
  va_arg_complex_print(TYPE_C16, MAX_ON_REG_C16, r8, 
		       c16[0],  c16[1],  c16[2],  c16[3],  c16[4],  c16[5],  c16[6],  c16[7]);
  va_arg_complex_print(TYPE_C32, MAX_ON_REG_C32, r16, 
		       c32[0],  c32[1],  c32[2],  c32[3]);
  
  return 0;
}
