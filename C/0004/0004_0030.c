#include <stdio.h>
/*
 * The op2 and op3 types are the same.
 *           op1  op2  op3
 * No.1-1    i2    i1   i1
 * No.1-2    u2    i1   i1
 * No.1-3    i4    i1   i1
 * No.1-4    u4    i1   i1
 * No.1-5    i8    i1   i1
 * No.1-6    u8    i1   i1
 * No.2-1    i2    i2   i2
 * No.2-2    u2    i2   i2
 * No.2-3    i4    i2   i2
 * No.2-4    u4    i2   i2
 * No.2-5    i8    i2   i2
 * No.2-6    u8    i2   i2
 * No.3-1    i2    i4   i4
 * No.3-2    u2    i4   i4
 * No.3-3    i4    i4   i4
 * No.3-4    u4    i4   i4
 * No.3-5    i8    i4   i4
 * No.3-6    u8    i4   i4
 * No.4-1    i2    i8   i8
 * No.4-2    u2    i8   i8
 * No.4-3    i4    i8   i8
 * No.4-4    u4    i8   i8
 * No.4-5    i8    i8   i8
 * No.4-6    u8    i8   i8
 * No.5-1    i2    u1   u1
 * No.5-2    u2    u1   u1
 * No.5-3    i4    u1   u1
 * No.5-4    u4    u1   u1
 * No.5-5    i8    u1   u1
 * No.5-6    u8    u1   u1
 * No.6-1    i2    u2   u2
 * No.6-2    u2    u2   u2
 * No.6-3    i4    u2   u2
 * No.6-4    u4    u2   u2
 * No.6-5    i8    u2   u2
 * No.6-6    u8    u2   u2
 * No.7-1    i2    u4   u4
 * No.7-2    u2    u4   u4
 * No.7-3    i4    u4   u4
 * No.7-4    u4    u4   u4
 * No.7-5    i8    u4   u4
 * No.7-6    u8    u4   u4
 * No.8-1    i2    u8   u8
 * No.8-2    u2    u8   u8
 * No.8-3    i4    u8   u8
 * No.8-4    u4    u8   u8
 * No.8-5    i8    u8   u8
 * No.8-6    u8    u8   u8
 */
#include <stdio.h>

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
  if (op1##result != (op2##d1==op3##d2)) \
    printf("test NG\n")
int main()
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
  signed short int   i2result;
  unsigned short int u2result;
  signed int         i4result;
  unsigned int       u4result;
  signed long long int    i8result;
  unsigned long long int  u8result;

  /* test start */
  printf("test start\n\n");
  /* compare data => signed */
  EQ(i2,i1,i1); /* test No.1-1 */
  EQ(i4,i1,i1); /* test No.1-2 */
  EQ(i8,i1,i1); /* test No.1-3 */
  EQ(u2,i1,i1); /* test No.1-4 */
  EQ(u4,i1,i1); /* test No.1-5 */
  EQ(u8,i1,i1); /* test No.1-6 */

  EQ(i2,i2,i2); /* test No.2-1 */
  EQ(i4,i2,i2); /* test No.2-2 */
  EQ(i8,i2,i2); /* test No.2-3 */
  EQ(u2,i2,i2); /* test No.2-4 */
  EQ(u4,i2,i2); /* test No.2-5 */
  EQ(u8,i2,i2); /* test No.2-6 */

  EQ(i2,i4,i4); /* test No.3-1 */
  EQ(i4,i4,i4); /* test No.3-2 */
  EQ(i8,i4,i4); /* test No.3-3 */
  EQ(u2,i4,i4); /* test No.3-4 */
  EQ(u4,i4,i4); /* test No.3-5 */
  EQ(u8,i4,i4); /* test No.3-6 */

  EQ(i2,i8,i8); /* test No.4-1 */
  EQ(i4,i8,i8); /* test No.4-2 */
  EQ(i8,i8,i8); /* test No.4-3 */
  EQ(u2,i8,i8); /* test No.4-4 */
  EQ(u4,i8,i8); /* test No.4-5 */
  EQ(u8,i8,i8); /* test No.4-6 */

  /* compare data => unsigned */
  EQ(i2,u1,u1); /* test No.5-1 */
  EQ(i4,u1,u1); /* test No.5-2 */
  EQ(i8,u1,u1); /* test No.5-3 */
  EQ(u2,u1,u1); /* test No.5-4 */
  EQ(u4,u1,u1); /* test No.5-5 */
  EQ(u8,u1,u1); /* test No.5-6 */

  EQ(i2,u2,u2); /* test No.6-1 */
  EQ(i4,u2,u2); /* test No.6-2 */
  EQ(i8,u2,u2); /* test No.6-3 */
  EQ(u2,u2,u2); /* test No.6-4 */
  EQ(u4,u2,u2); /* test No.6-5 */
  EQ(u8,u2,u2); /* test No.6-6 */

  EQ(i2,u4,u4); /* test No.7-1 */
  EQ(i4,u4,u4); /* test No.7-2 */
  EQ(i8,u4,u4); /* test No.7-3 */
  EQ(u2,u4,u4); /* test No.7-4 */
  EQ(u4,u4,u4); /* test No.7-5 */
  EQ(u8,u4,u4); /* test No.7-6 */

  EQ(i2,u8,u8); /* test No.8-1 */
  EQ(i4,u8,u8); /* test No.8-2 */
  EQ(i8,u8,u8); /* test No.8-3 */
  EQ(u2,u8,u8); /* test No.8-4 */
  EQ(u4,u8,u8); /* test No.8-5 */
  EQ(u8,u8,u8); /* test No.8-6 */
  printf("test OK\n\n");
  printf("test end\n");
}

static void init_i1(signed char *i1){*i1 = 2;}
static void init_i2(signed short int *i2){*i2 = 2;}
static void init_i4(signed int *i4){*i4 = 2;}
static void init_i8(signed long long int *i8){*i8 = 2;}
static void init_u1(unsigned char *i1){*i1 = 2;}
static void init_u2(unsigned short int *i2){*i2 = 2;}
static void init_u4(unsigned int *i4){*i4 = 2;}
static void init_u8(unsigned long long int *i8){*i8 = 2;}
