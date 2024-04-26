#include <stdio.h>
/*
 * The types of op2 and op3 are different.
 *           op1  op2  op3
 * No.1-1    i2    u4   u8
 * No.1-2    i2    u8   u4
 * No.2-1    i4    u4   u8
 * No.2-2    i4    u8   u4
 * No.3-1    i8    u4   u8
 * No.3-2    i8    u8   u4
 * No.4-1    u2    u4   u8
 * No.4-2    u2    u8   u4
 * No.5-1    u4    u4   u8
 * No.5-2    u4    u8   u4
 * No.6-1    u8    u4   u8
 * No.6-2    u8    u8   u4
 */
#include <stdio.h>

static int  judge_result(long long int a);
static void init_i1(signed char *i1);
static void init_i2(signed short int *i2);
static void init_i4(signed int *i4);
static void init_i8(signed long long int *i8);
static void init_u1(unsigned char *i1);
static void init_u2(unsigned short int *i2);
static void init_u4(unsigned int *i4);
static void init_u8(unsigned long long int *i8);

#define EQ(op1,op2,op3) \
  init_##op2(&op2##d1); \
  init_##op3(&op3##d2); \
  if (op2##d1==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0; \
  if (judge_result((long long int)op1##result)) \
    return 0

int main(void)
{
  /* compare data */
  signed char      i1d1, i1d2;
  signed short int i2d1, i2d2;
  signed int       i4d1, i4d2;
  signed long long int  i8d1, i8d2;
  unsigned char      u1d1, u1d2;
  unsigned short int u2d1, u2d2;
  unsigned int       u4d1, u4d2;
  unsigned long long int  u8d1, u8d2;
  /* answer */
  signed char        u1result;
  signed short int   i2result;
  unsigned short int u2result;
  signed int         i4result;
  unsigned int       u4result;
  signed long long int    i8result;
  unsigned long long int  u8result;

  /* test start */
  printf("test start\n\n");
  EQ(i2,u4,u8); /* test No.1-1 */
  EQ(i2,u8,u4); /* test No.1-2 */
  EQ(i4,u4,u8); /* test No.2-1 */
  EQ(i4,u8,u4); /* test No.2-2 */
  EQ(i8,u4,u8); /* test No.3-1 */
  EQ(i8,u8,u4); /* test No.3-2 */
  EQ(u1,u4,u8); /* test No.4-1 */
  EQ(u1,u8,u4); /* test No.4-2 */
  EQ(u2,u4,u8); /* test No.5-1 */
  EQ(u2,u8,u4); /* test No.5-2 */
  EQ(u4,u4,u8); /* test No.6-1 */
  EQ(u4,u8,u4); /* test No.6-2 */
  EQ(u8,u4,u8); /* test No.7-1 */
  EQ(u8,u8,u4); /* test No.7-2 */
  printf("test OK\n\n");
  printf("test end\n");
}

static void init_i1(signed char *i1){*i1 = 1;}
static void init_i2(signed short int *i2){*i2 = 1;}
static void init_i4(signed int *i4){*i4 = 1;}
static void init_i8(signed long long int *i8){*i8 = 1;}
static void init_u1(unsigned char *i1){*i1 = 1;}
static void init_u2(unsigned short int *i2){*i2 = 1;}
static void init_u4(unsigned int *i4){*i4 = 1;}
static void init_u8(unsigned long long int *i8){*i8 = 1;}

static int judge_result(long long int a)
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
