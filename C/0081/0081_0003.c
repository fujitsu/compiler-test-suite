#include <complex.h>
#include <stdarg.h>
#include <stdio.h>

#define TYPE_R4R4   1
#define TYPE_R8R8   2
#define TYPE_R16R16 3
#define TYPE_C8C8   4
#define TYPE_I4I4   5
#define TYPE_I4R8   6
#define MAX_ON_REG_R4R4  16
#define MAX_ON_REG_R8R8 8
#define MAX_ON_REG_R16R16 4
#define MAX_ON_REG_C8C8 4
#define MAX_ON_REG_I4I4 6
#define MAX_ON_REG_I4R8 6

struct _r4r4 {
  float real;
  float imag;
};
struct _r8r8 {
  double real;
  double imag;
};
struct _r16r16 {
  long double real;
  long double imag;
};
struct _c8c8 {
  float _Complex c1;
  float _Complex c2;
};
struct _i4i4 {
  int i1;
  int i2;
};
struct _i4r8 {
  int i;
  double r;
};

void va_arg_struct_print(int type, int num, ...) {
  float          r4;
  double         r8;
  long double    r16;
  int            i4;
  struct _r4r4   r4r4;
  struct _r8r8   r8r8;
  struct _r16r16 r16r16;
  struct _c8c8   c8c8;
  struct _i4i4   i4i4;
  struct _i4r8   i4r8;
  va_list va_arg_list;
  int i;
  
  switch(type) {
  case TYPE_R4R4:
    printf("===== va_arg_struct_r4r4 =====\n");
    va_start(va_arg_list, num);
    r4 = (float)va_arg(va_arg_list, double);
    printf("r4     = %f\n", r4);
    for(i=0; i<num; i++) {
      r4r4 = va_arg(va_arg_list, struct _r4r4);
      printf("r4r4[%d]  = ( %f , %f )\n", i, r4r4.real, r4r4.imag);
    }
    va_end(va_arg_list);
    break;
  case TYPE_R8R8:
    printf("===== va_arg_struct_r8r8 =====\n");
    va_start(va_arg_list, num);
    r8 = va_arg(va_arg_list, double);
    printf("r8     = %f\n", r8);
    for(i=0; i<num; i++) {
      r8r8 = va_arg(va_arg_list, struct _r8r8);
      printf("r8r8[%d] = ( %f , %f )\n", i, r8r8.real, r8r8.imag);
    }
    va_end(va_arg_list);
    break;
  case TYPE_R16R16:
    printf("===== va_arg_struct_r16r16 =====\n");
    va_start(va_arg_list, num);
    r16 = va_arg(va_arg_list, long double);
    printf("r16    = %Lf\n", r16);
    for(i=0; i<num; i++) {
      r16r16 = va_arg(va_arg_list, struct _r16r16);
      printf("r16r16[%d] = ( %Lf , %Lf )\n", i, r16r16.real, r16r16.imag);
    }
    va_end(va_arg_list);
    break;
  case TYPE_C8C8:
    printf("===== va_arg_struct_c8c8 =====\n");
    va_start(va_arg_list, num);
    r4 = (float)va_arg(va_arg_list, double);
    printf("r4     = %f\n", r4);
    for(i=0; i<num; i++) {
      c8c8 = va_arg(va_arg_list, struct _c8c8);
      printf("c8c8[%d] = ( %f, %f , %f, %f )\n", i, creal(c8c8.c1), cimag(c8c8.c1), creal(c8c8.c2), cimag(c8c8.c2));
    }
    va_end(va_arg_list);
    break;
  case TYPE_I4I4:
    printf("===== va_arg_struct_i4i4 =====\n");
    va_start(va_arg_list, num);
    i4 = va_arg(va_arg_list, int);
    printf("i4     = %d\n", i4);
    for(i=0; i<num; i++) {
      i4i4 = va_arg(va_arg_list, struct _i4i4);
      printf("i4i4[%d] = ( %d , %d )\n", i, i4i4.i1, i4i4.i2);
    }
    va_end(va_arg_list);
    break;
  case TYPE_I4R8:
    printf("===== va_arg_struct_i4r8 =====\n");
    va_start(va_arg_list, num);
    r8 = va_arg(va_arg_list, double);
    printf("r8     = %f\n", r8);
    for(i=0; i<num; i++) {
      i4r8 = va_arg(va_arg_list, struct _i4r8);
      printf("i4r8[%d] = ( %d , %f )\n", i, i4r8.i, i4r8.r);
    }
    va_end(va_arg_list);
    break;
  default:
    break;
  }
  
  return;
}

int main(void) {
  float       r4  = -1.0f;
  double      r8  = -1.0;
  long double r16 = -1.0L;
  int         i4  = 1;
  struct _r4r4  r4r4[MAX_ON_REG_R4R4];
  struct _r8r8 r8r8[MAX_ON_REG_R8R8];
  struct _r16r16 r16r16[MAX_ON_REG_R16R16];
  struct _c8c8 c8c8[MAX_ON_REG_C8C8];
  struct _i4i4 i4i4[MAX_ON_REG_I4I4];
  struct _i4r8 i4r8[MAX_ON_REG_I4R8];
  int n;
  
  for(n=0; n<MAX_ON_REG_R4R4; n++) {
    r4r4[n].real = (float)n;
    r4r4[n].imag = (float)n;
  }
  for(n=0; n<MAX_ON_REG_R8R8; n++) {
    r8r8[n].real = (double)n;
    r8r8[n].imag = (double)n;
  }
  for(n=0; n<MAX_ON_REG_C8C8; n++) {
    c8c8[n].c1 = (double)(n+0) + (double)(n+1)*I;
    c8c8[n].c2 = (double)(n+2) + (double)(n+3)*I;
  }
  for(n=0; n<MAX_ON_REG_R16R16; n++) {
    r16r16[n].real = (long double)n;
    r16r16[n].imag = (long double)n;
  }
  for(n=0; n<MAX_ON_REG_I4I4; n++) {
    i4i4[n].i1 = n;
    i4i4[n].i2 = n+1;
  }
  for(n=0; n<MAX_ON_REG_I4R8; n++) {
    i4r8[n].i = n;
    i4r8[n].r = (double)n;
  }
  
  va_arg_struct_print(TYPE_R4R4, MAX_ON_REG_R4R4, r4, 
		      r4r4[0],  r4r4[1],  r4r4[2],  r4r4[3],  r4r4[4],  r4r4[5],  r4r4[6],  r4r4[7], 
		      r4r4[8],  r4r4[9],  r4r4[10], r4r4[11], r4r4[12], r4r4[13], r4r4[14], r4r4[15]);
  va_arg_struct_print(TYPE_R8R8, MAX_ON_REG_R8R8, r8, 
		      r8r8[0],  r8r8[1],  r8r8[2],  r8r8[3],  r8r8[4],  r8r8[5],  r8r8[6],  r8r8[7]);
  va_arg_struct_print(TYPE_R16R16, MAX_ON_REG_R16R16, r16, 
		      r16r16[0],  r16r16[1],  r16r16[2],  r16r16[3]);
  va_arg_struct_print(TYPE_C8C8, MAX_ON_REG_C8C8, r4, 
		      c8c8[0],  c8c8[1],  c8c8[2],  c8c8[3]);
  va_arg_struct_print(TYPE_I4I4, MAX_ON_REG_I4I4, i4, 
		      i4i4[0],  i4i4[1],  i4i4[2],  i4i4[3],  i4i4[4],  i4i4[5]);
  va_arg_struct_print(TYPE_I4R8, MAX_ON_REG_I4R8, r8, 
		      i4r8[0],  i4r8[1],  i4r8[2],  i4r8[3],  i4r8[4],  i4r8[5]);
  
  return 0;
}
