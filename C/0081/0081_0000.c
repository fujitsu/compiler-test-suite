#include <complex.h>
#include <stdarg.h>
#include <stdio.h>

#define TYPE_R4  4
#define TYPE_R8  8
#define TYPE_R16 16
#define MAX_ON_REG_R4  32
#define MAX_ON_REG_R8  16
#define MAX_ON_REG_R16 8

void va_arg_real_print(int type, int num, ...) {
  short       i2;
  int         i4;
  long long   i8;
  float       r4;
  double      r8;
  long double r16;
  va_list va_arg_list;
  int i;
  
  switch(type) {
  case TYPE_R4:
    printf("===== va_arg_float =====\n");
    va_start(va_arg_list, num);
    i2 = (short)va_arg(va_arg_list, int);
    printf("i2     = %d\n", i2);
    for(i=0; i<num; i++) {
      r4 = (float)va_arg(va_arg_list, double);
      printf("r4[%d] = %f\n", i, r4);
    }
    va_end(va_arg_list);
    break;
  case TYPE_R8:
    printf("===== va_arg_double =====\n");
    va_start(va_arg_list, num);
    i4 = va_arg(va_arg_list, int);
    printf("i4     = %d\n", i4);
    for(i=0; i<num; i++) {
      r8 = va_arg(va_arg_list, double);
      printf("r8[%d] = %f\n", i, r8);
    }
    va_end(va_arg_list);
    break;
  case TYPE_R16:
    printf("===== va_arg_long_double =====\n");
    va_start(va_arg_list, num);
    i8 = va_arg(va_arg_list, long long);
    printf("i8     = %ld\n", i8);
    for(i=0; i<num; i++) {
      r16 = va_arg(va_arg_list, long double);
      printf("r16[%d] = %Lf\n", i, r16);
    }
    va_end(va_arg_list);
    break;
  default:
    break;
  }
  
  return;
}

int main(void) {
  short       i2 = -1;
  int         i4 = -1;
  long long   i8 = -1;
  float       r4 [MAX_ON_REG_R4];
  double      r8 [MAX_ON_REG_R8];
  long double r16[MAX_ON_REG_R16];
  int n;
  
  for(n=0; n<MAX_ON_REG_R4; n++) {
    r4[n]  = (float)n;
  }
  for(n=0; n<MAX_ON_REG_R8; n++) {
    r8[n]  = (double)n;
  }
  for(n=0; n<MAX_ON_REG_R16; n++) {
    r16[n] = (long double)n;
  }
  
  va_arg_real_print(TYPE_R4, MAX_ON_REG_R4, i2, 
		    r4[0],  r4[1],  r4[2],  r4[3],  r4[4],  r4[5],  r4[6],  r4[7], 
		    r4[8],  r4[9],  r4[10], r4[11], r4[12], r4[13], r4[14], r4[15], 
		    r4[16], r4[17], r4[18], r4[19], r4[20], r4[21], r4[22], r4[23], 
		    r4[24], r4[25], r4[26], r4[27], r4[28], r4[29], r4[30], r4[31]);
  va_arg_real_print(TYPE_R8, MAX_ON_REG_R8, i4, 
		    r8[0],  r8[1],  r8[2],  r8[3],  r8[4],  r8[5],  r8[6],  r8[7], 
		    r8[8],  r8[9],  r8[10], r8[11], r8[12], r8[13], r8[14], r8[15]);
  va_arg_real_print(TYPE_R16, MAX_ON_REG_R16, i8, 
		    r16[0],  r16[1],  r16[2],  r16[3],  r16[4],  r16[5],  r16[6],  r16[7]);
  
  return 0;
}
