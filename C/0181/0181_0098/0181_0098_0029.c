
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

#define EQ_calc1(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (op2##d1==(op3##d2+1)) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define EQ_calc2(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if ((op2##d1-1)==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define EQ_calc3(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if ((op2##d1+op3##d2)==3) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define EQ_calc4(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if ((op2##d1-op3##d2)==1) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define EQ_calc5(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  if (1==(op2##d1-op3##d2)) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

#define EQ_calc6(op1,op2,op3) \
  init_##op2##_1(&op2##d1); \
  init_##op3##_2(&op3##d2); \
  { \
    int dummy; \
    init_##op3##_2(&dummy); \
    if ((op2##d1-op3##d2)==dummy) \
      op1##result = 1; \
    else \
      op1##result = 0; \
  } \
  if (judge_result((long long int)op1##result)) \
    return

 void lto_sub_30()
{
  int i4d1, i4d2;
  int i4result;

  
  printf(" test start\n\n");
  EQ_calc1(i4,i4,i4); 
  EQ_calc2(i4,i4,i4); 
  EQ_calc3(i4,i4,i4); 
  EQ_calc4(i4,i4,i4); 
  EQ_calc5(i4,i4,i4); 
  EQ_calc6(i4,i4,i4); 
  printf(" test OK\n\n");
  printf(" test end\n");
}

static int init_i1_1(signed char *i1){*i1 = 2;}
static int init_i2_1(signed short int *i2){*i2 = 2;}
static int init_i4_1(signed int *i4){*i4 = 2;}
static int init_i8_1(signed long long int *i8){*i8 = 2;}
static int init_u1_1(unsigned char *i1){*i1 = 2;}
static int init_u2_1(unsigned short int *i2){*i2 = 2;}
static int init_u4_1(unsigned int *i4){*i4 = 2;}
static int init_u8_1(unsigned long long int *i8){*i8 = 2;}
static int init_i1_2(signed char *i1){*i1 = 1;}
static int init_i2_2(signed short int *i2){*i2 = 1;}
static int init_i4_2(signed int *i4){*i4 = 1;}
static int init_i8_2(signed long long int *i8){*i8 = 1;}
static int init_u1_2(unsigned char *i1){*i1 = 1;}
static int init_u2_2(unsigned short int *i2){*i2 = 1;}
static int init_u4_2(unsigned int *i4){*i4 = 1;}
static int init_u8_2(unsigned long long int *i8){*i8 = 1;}

static int judge_result(a)
     long long int a;
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
