#include <stdio.h>

extern char          i1func(void);
extern short int     i2func(void);
extern int           i4func(void);
extern long long int i8func(void);
extern unsigned char          u1func(void);
extern unsigned short int     u2func(void);
extern unsigned int           u4func(void);
extern unsigned long long int u8func(void);
extern float       r4func(void);
extern double      r8func(void);
extern long double r16func(void);

int main(void)
{
  printf("char: %hd\n", (short)i1func());

  printf("short: %hd\n", i2func());

  printf("int: %d\n", i4func());

  printf("long long: %lld\n", i8func());

  printf("unsigned char: %#hX\n", (unsigned short)u1func());

  printf("unsigned short: %#hX\n", u2func());

  printf("unsigned int: %#X\n", u4func());

  printf("unsigned long long: %#llX\n", u8func());

  printf("float: %f\n", r4func());

  printf("double: %lf\n", r8func());

  printf("long double: %Le\n", r16func());
}
