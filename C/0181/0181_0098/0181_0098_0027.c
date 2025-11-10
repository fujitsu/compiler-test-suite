
#include <stdio.h>
static int  judge_result();
static int init_r4_1();
static int init_r4_2();
static int init_r8_1();
static int init_r8_2();
static int init_r16_1();
static int init_r16_2();

#define LT_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1<op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return 0

#define LE_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1<=op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return 0

#define GT_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1>op3##d2) \
     op1##result = 0; \
  else \
     op1##result = 1; \
  if (judge_result((long long int)op1##result)) \
    return 0

#define GE_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1>=op3##d2) \
     op1##result = 0; \
  else \
     op1##result = 1; \
  if (judge_result((long long int)op1##result)) \
    return 0

#define CMP_TEST(OP) \
  OP##_(i2,r4,r4);  \
  OP##_(i4,r4,r4);  \
  OP##_(i8,r4,r4);  \
  OP##_(u2,r4,r4);  \
  OP##_(u4,r4,r4);  \
  OP##_(u8,r4,r4);  \
  OP##_(i2,r8,r8);  \
  OP##_(i4,r8,r8);  \
  OP##_(i8,r8,r8);  \
  OP##_(u2,r8,r8);  \
  OP##_(u4,r8,r8);  \
  OP##_(u8,r8,r8);  \
  OP##_(i2,r16,r16);  \
  OP##_(i4,r16,r16);  \
  OP##_(i8,r16,r16);  \
  OP##_(u2,r16,r16);  \
  OP##_(u4,r16,r16);  \
  OP##_(u8,r16,r16); 

 int lto_sub_28()
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
  CMP_TEST(LT) 
  CMP_TEST(LE) 
  CMP_TEST(GT) 
  CMP_TEST(GE) 
  printf(" test OK\n\n");
  printf(" test end\n");
}

static int init_r4_1(float *r4){*r4 = 1.0;}
static int init_r8_1(double *r8){*r8 = 1.0;}
static int init_r16_1(long double *r16){*r16 = 1.0;}
static int init_r4_2(float *r4){*r4 = 1.2;}
static int init_r8_2(double *r8){*r8 = 1.2;}
static int init_r16_2(long double *r16){*r16 = 1.2;}

static int judge_result(a)
     long long int a;
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
