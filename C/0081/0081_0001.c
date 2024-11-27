#include <stdarg.h>
#include <stdio.h>

#define TYPE_I1  1
#define TYPE_I2  2
#define TYPE_I4  4
#define TYPE_I8  8
#define MAX_ON_REG_I1 6
#define MAX_ON_REG_I2 6
#define MAX_ON_REG_I4 6
#define MAX_ON_REG_I8 6

void va_arg_int_print(int type, int num, ...);

int main(void) {
  char      i1[MAX_ON_REG_I1];
  short     i2[MAX_ON_REG_I2];
  int       i4[MAX_ON_REG_I4];
  long long i8[MAX_ON_REG_I8];
  int dummy;
  int n;
  
  for(n=0; n<MAX_ON_REG_I1; n++) {
    i1[n] = (char)n;
  }
  for(n=0; n<MAX_ON_REG_I2; n++) {
    i2[n] = (short)n;
  }
  for(n=0; n<MAX_ON_REG_I4; n++) {
    i4[n] = n;
  }
  for(n=0; n<MAX_ON_REG_I8; n++) {
    i8[n] = (long long)n;
  }
  dummy = -1;
  
  va_arg_int_print(TYPE_I1, MAX_ON_REG_I1, i1[0], i1[1], i1[2], i1[3], i1[4], i1[5]);
  va_arg_int_print(TYPE_I2, MAX_ON_REG_I2, i2[0], i2[1], i2[2], i2[3], i2[4], i2[5]);
  va_arg_int_print(TYPE_I4, MAX_ON_REG_I4, i4[0], i4[1], i4[2], i4[3], i4[4], i4[5]);
  va_arg_int_print(TYPE_I8, MAX_ON_REG_I8, dummy, i8[0], i8[1], i8[2], i8[3], i8[4], i8[5]);
  
  return 0;
}

void va_arg_int_print(int type, int num, ...) {
  va_list va_arg_list;
  char      i1;
  short     i2;
  int       i4;
  long long i8;
  int dummy;
  int i;
  
  switch(type) {
  case TYPE_I1:
    printf("===== va_arg_i1 =====\n");
    va_start(va_arg_list, num);
    for(i=0; i<num; i++) {
      i1 = (char)va_arg(va_arg_list, int);
      printf("i1[%d] = %d\n", i, i1);
    }
    va_end(va_arg_list);
    break;
  case TYPE_I2:
    printf("===== va_arg_i2 =====\n");
    va_start(va_arg_list, num);
    for(i=0; i<num; i++) {
      i2 = (short)va_arg(va_arg_list, int);
      printf("i2[%d] = %d\n", i, i2);
    }
    va_end(va_arg_list);
    break;
  case TYPE_I4:
    printf("===== va_arg_i4 =====\n");
    va_start(va_arg_list, num);
    for(i=0; i<num; i++) {
      i4 = va_arg(va_arg_list, int);
      printf("i4[%d] = %d\n", i, i4);
    }
    va_end(va_arg_list);
    break;
  case TYPE_I8:
    printf("===== va_arg_i8 =====\n");
    va_start(va_arg_list, num);
    dummy = va_arg(va_arg_list, int);
    for(i=0; i<num; i++) {
      i8 = va_arg(va_arg_list, long long);
      printf("i8[%d] = %ld\n", i, i8);
    }
    va_end(va_arg_list);
    break;
  default:
    break;
  }
  return;
}
