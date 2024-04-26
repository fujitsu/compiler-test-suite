#include <stdio.h>
/*
 *           op1  op2  op3
 * No.1-1    i2    r4   r8
 * No.1-2    i4    r4   r8
 * No.1-3    i8    r4   r8
 * No.1-4    u2    r4   r8
 * No.1-5    u4    r4   r8
 * No.1-6    u8    r4   r8
 * No.1-7    i2    r8   r4
 * No.1-8    i4    r8   r4
 * No.1-9    i8    r8   r4
 * No.1-10   u2    r8   r4
 * No.1-11   u4    r8   r4
 * No.1-12   u8    r8   r4
 * No.2-1    i2    r4   r16
 * No.2-2    i4    r4   r16
 * No.2-3    i8    r4   r16
 * No.2-4    u2    r4   r16
 * No.2-5    u4    r4   r16
 * No.2-6    u8    r4   r16
 * No.2-7    i2    r16  r4
 * No.2-8    i4    r16  r4
 * No.2-9    i8    r16  r4
 * No.2-10   u2    r16  r4
 * No.2-11   u4    r16  r4
 * No.2-12   u8    r16  r4
 * No.3-1    i2    r8   r16
 * No.3-2    i4    r8   r16
 * No.3-3    i8    r8   r16
 * No.3-4    u2    r8   r16
 * No.3-5    u4    r8   r16
 * No.3-6    u8    r8   r16
 * No.3-7    i2    r16  r8
 * No.3-8    i4    r16  r8
 * No.3-9    i8    r16  r8
 * No.3-10   u2    r16  r8
 * No.3-11   u4    r16  r8
 * No.3-12   u8    r16  r8
 */
#include <stdio.h>

static int  judge_result(long long int a);
static void init_r4(float *r4);
static void init_r8(double *r8);
static void init_r16(long double *r16);

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
  float       r4d1, r4d2;
  double      r8d1, r8d2;
  long double r16d1, r16d2;
  /* answer */
  signed short int   i2result;
  unsigned short int u2result;
  signed int         i4result;
  unsigned int       u4result;
  signed long long int    i8result;
  unsigned long long int  u8result;

  /* test start */
  printf("test start\n\n");
  EQ(i2,r4,r8); /* test No.1-1 */
  EQ(i4,r4,r8); /* test No.1-2 */
  EQ(i8,r4,r8); /* test No.1-3 */
  EQ(u2,r4,r8); /* test No.1-4 */
  EQ(u4,r4,r8); /* test No.1-5 */
  EQ(u8,r4,r8); /* test No.1-6 */
  EQ(i2,r8,r4); /* test No.1-7 */
  EQ(i4,r8,r4); /* test No.1-8 */
  EQ(i8,r8,r4); /* test No.1-9 */
  EQ(u2,r8,r4); /* test No.1-10 */
  EQ(u4,r8,r4); /* test No.1-11 */
  EQ(u8,r8,r4); /* test No.1-12 */

  EQ(i2,r4,r16); /* test No.2-1 */
  EQ(i4,r4,r16); /* test No.2-2 */
  EQ(i8,r4,r16); /* test No.2-3 */
  EQ(u2,r4,r16); /* test No.2-4 */
  EQ(u4,r4,r16); /* test No.2-5 */
  EQ(u8,r4,r16); /* test No.2-6 */
  EQ(i2,r16,r4); /* test No.2-7 */
  EQ(i4,r16,r4); /* test No.2-8 */
  EQ(i8,r16,r4); /* test No.2-9 */
  EQ(u2,r16,r4); /* test No.2-10 */
  EQ(u4,r16,r4); /* test No.2-11 */
  EQ(u8,r16,r4); /* test No.2-12 */

  EQ(i2,r8,r16); /* test No.3-1 */
  EQ(i4,r8,r16); /* test No.3-2 */
  EQ(i8,r8,r16); /* test No.3-3 */
  EQ(u2,r8,r16); /* test No.3-4 */
  EQ(u4,r8,r16); /* test No.3-5 */
  EQ(u8,r8,r16); /* test No.3-6 */
  EQ(i2,r16,r8); /* test No.3-7 */
  EQ(i4,r16,r8); /* test No.3-8 */
  EQ(i8,r16,r8); /* test No.3-9 */
  EQ(u2,r16,r8); /* test No.3-10 */
  EQ(u4,r16,r8); /* test No.3-11 */
  EQ(u8,r16,r8); /* test No.3-12 */
  printf("test OK\n\n");
  printf("test end\n");
}

static void init_r4(float *r4){*r4 = 1.0;}
static void init_r8(double *r8){*r8 = 1.0;}
static void init_r16(long double *r16){*r16 = 1.0;}

static int judge_result(long long int a)
{
  if (a==0) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
