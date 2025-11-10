
#include <stdio.h>
static int  judge_result();
static int init_i1_1();
static int init_i2_1();
static int init_i4_1();
static int init_i8_1();
static int init_u1_1();
static int init_u2_1();
static int init_u4_1();
static int init_u8_1();
static int init_i1_2();
static int init_i2_2();
static int init_i4_2();
static int init_i8_2();
static int init_u1_2();
static int init_u2_2();
static int init_u4_2();
static int init_u8_2();

#define LT_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1<op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define LE_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1<=op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define GT_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1>op3##d2) \
     op1##result = 0; \
  else \
     op1##result = 1; \
  if (judge_result((long long int)op1##result)) \
    return

#define GE_(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1>=op3##d2) \
     op1##result = 0; \
  else \
     op1##result = 1; \
  if (judge_result((long long int)op1##result)) \
    return

#define CMP_TEST(OP) \
  OP##_(i2,i1,i1);  \
  OP##_(i4,i1,i1);  \
  OP##_(i8,i1,i1);  \
  OP##_(u2,i1,i1);  \
  OP##_(u4,i1,i1);  \
  OP##_(u8,i1,i1);  \
  OP##_(i2,i2,i2);  \
  OP##_(i4,i2,i2);  \
  OP##_(i8,i2,i2);  \
  OP##_(u2,i2,i2);  \
  OP##_(u4,i2,i2);  \
  OP##_(u8,i2,i2);  \
  OP##_(i2,i4,i4);  \
  OP##_(i4,i4,i4);  \
  OP##_(i8,i4,i4);  \
  OP##_(u2,i4,i4);  \
  OP##_(u4,i4,i4);  \
  OP##_(u8,i4,i4);  \
  OP##_(i2,i8,i8);  \
  OP##_(i4,i8,i8);  \
  OP##_(i8,i8,i8);  \
  OP##_(u2,i8,i8);  \
  OP##_(u4,i8,i8);  \
  OP##_(u8,i8,i8);  \
  OP##_(i2,u1,u1);  \
  OP##_(i4,u1,u1);  \
  OP##_(i8,u1,u1);  \
  OP##_(u2,u1,u1);  \
  OP##_(u4,u1,u1);  \
  OP##_(u8,u1,u1);  \
  OP##_(i2,u2,u2);  \
  OP##_(i4,u2,u2);  \
  OP##_(i8,u2,u2);  \
  OP##_(u2,u2,u2);  \
  OP##_(u4,u2,u2);  \
  OP##_(u8,u2,u2);  \
  OP##_(i2,u4,u4);  \
  OP##_(i4,u4,u4);  \
  OP##_(i8,u4,u4);  \
  OP##_(u2,u4,u4);  \
  OP##_(u4,u4,u4);  \
  OP##_(u8,u4,u4);  \
  OP##_(i2,u8,u8);  \
  OP##_(i4,u8,u8);  \
  OP##_(i8,u8,u8);  \
  OP##_(u2,u8,u8);  \
  OP##_(u4,u8,u8);  \
  OP##_(u8,u8,u8); 

void lto_sub_27()
{
  
  signed char      i1d1, i1d2;
  signed short int i2d1, i2d2;
  signed int       i4d1, i4d2;
  signed long long int  i8d1, i8d2;
  unsigned char      u1d1, u1d2;
  unsigned short int u2d1, u2d2;
  unsigned int       u4d1, u4d2;
  unsigned long long int  u8d1, u8d2;
  
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

static int init_i1_1(signed char *i1){*i1 = 1;}
static int init_i1_2(signed char *i1){*i1 = 2;}
static int init_i2_1(signed short int *i2){*i2 = 1;}
static int init_i2_2(signed short int *i2){*i2 = 2;}
static int init_i4_1(signed int *i4){*i4 = 1;}
static int init_i4_2(signed int *i4){*i4 = 2;}
static int init_i8_1(signed long long int *i8){*i8 = 1;}
static int init_i8_2(signed long long int *i8){*i8 = 2;}
static int init_u1_1(unsigned char *i1){*i1 = 1;}
static int init_u1_2(unsigned char *i1){*i1 = 2;}
static int init_u2_1(unsigned short int *i2){*i2 = 1;}
static int init_u2_2(unsigned short int *i2){*i2 = 2;}
static int init_u4_1(unsigned int *i4){*i4 = 1;}
static int init_u4_2(unsigned int *i4){*i4 = 2;}
static int init_u8_1(unsigned long long int *i8){*i8 = 1;}
static int init_u8_2(unsigned long long int *i8){*i8 = 2;}

static int judge_result(a)
     long long int a;
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
