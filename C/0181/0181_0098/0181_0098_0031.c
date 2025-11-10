
#include <stdio.h>
static int init_r4();
static int init_r8();
static int init_r16();

#define EQ(op1,op2,op3) \
  init_##op2(&op2##d1); \
  init_##op3(&op3##d2); \
  if (op2##d1==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (op1##result != (op2##d1==op3##d2)) \
    printf(" test NG\n")

void lto_sub_32()
{
  
  float       r4d1, r4d2;
  double      r8d1, r8d2;
  long double r16d1, r16d2;
  
  signed short int   i2result;
  unsigned short int u2result;
  signed int         i4result;
  unsigned int       u4result;
  signed long long int    i8result;
  unsigned long long int  u8result;

  
  printf(" test start\n\n");
  EQ(i2,r4,r4); 
  EQ(i4,r4,r4); 
  EQ(i8,r4,r4); 
  EQ(u2,r4,r4); 
  EQ(u4,r4,r4); 
  EQ(u8,r4,r4); 

  EQ(i2,r8,r8); 
  EQ(i4,r8,r8); 
  EQ(i8,r8,r8); 
  EQ(u2,r8,r8); 
  EQ(u4,r8,r8); 
  EQ(u8,r8,r8); 

  EQ(i2,r16,r16); 
  EQ(i4,r16,r16); 
  EQ(i8,r16,r16); 
  EQ(u2,r16,r16); 
  EQ(u4,r16,r16); 
  EQ(u8,r16,r16); 
  printf(" test OK\n\n");
  printf(" test end\n");
}

static int init_r4(float *r4){*r4 = 1.4;}
static int init_r8(double *r8){*r8 = 1.4;}
static int init_r16(long double *r16){*r16 = 1.4;}
