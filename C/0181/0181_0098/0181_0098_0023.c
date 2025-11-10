
#include <stdio.h>
static int  judge_result();
static int init_i1();
static int init_i2();
static int init_i4();
static int init_i8();
static int init_u1();
static int init_u2();
static int init_u4();
static int init_u8();

#define EQ(op1,op2,op3) \
  init_##op2(&op2##d1); \
  init_##op3(&op3##d2); \
  if (op2##d1==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return

 void lto_sub_24()
{
  
  signed char      i1d1, i1d2;
  signed short int i2d1, i2d2;
  signed int       i4d1, i4d2;
  signed long long int  i8d1, i8d2;
  unsigned char      u1d1, u1d2;
  unsigned short int u2d1, u2d2;
  unsigned int       u4d1, u4d2;
  unsigned long long int  u8d1, u8d2;
  
  signed char        u1result;
  signed short int   i2result;
  unsigned short int u2result;
  signed int         i4result;
  unsigned int       u4result;
  signed long long int    i8result;
  unsigned long long int  u8result;

  
  printf(" test start\n\n");
  EQ(i2,u4,u8); 
  EQ(i2,u8,u4); 
  EQ(i4,u4,u8); 
  EQ(i4,u8,u4); 
  EQ(i8,u4,u8); 
  EQ(i8,u8,u4); 
  EQ(u1,u4,u8); 
  EQ(u1,u8,u4); 
  EQ(u2,u4,u8); 
  EQ(u2,u8,u4); 
  EQ(u4,u4,u8); 
  EQ(u4,u8,u4); 
  EQ(u8,u4,u8); 
  EQ(u8,u8,u4); 
  printf(" test OK\n\n");
  printf(" test end\n");
}

static int init_i1(signed char *i1){*i1 = 1;}
static int init_i2(signed short int *i2){*i2 = 1;}
static int init_i4(signed int *i4){*i4 = 1;}
static int init_i8(signed long long int *i8){*i8 = 1;}
static int init_u1(unsigned char *i1){*i1 = 1;}
static int init_u2(unsigned short int *i2){*i2 = 1;}
static int init_u4(unsigned int *i4){*i4 = 1;}
static int init_u8(unsigned long long int *i8){*i8 = 1;}

static int judge_result(a)
     long long int a;
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
