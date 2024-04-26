#include <stdio.h>
/*
 * The op2 and op3 types are the same.
 */
#include <stdio.h>

static int  judge_result(int);
static void init_i4(signed int *);

#define EQ(op1,op2,op3) \
  if (op2##d1==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0

int main(void)
{
  signed int       i4d1, i4d2;
  signed int       i4result,res=0;

  /* test start */
  printf("test start\n\n");
  init_i4(&i4d1);
  init_i4(&i4d2);
  /* compare data => signed */
  EQ(i4,i4,i4); /* test No.1-1 */
  res+=i4result;
  EQ(i4,i4,i4); /* test No.1-2 */
  res+=i4result;
  EQ(i4,i4,i4); /* test No.1-3 */
  res+=i4result;
  EQ(i4,i4,i4); /* test No.1-4 */
  res+=i4result;
  EQ(i4,i4,i4); /* test No.1-5 */
  res+=i4result;
  EQ(i4,i4,i4); /* test No.1-6 */
  res+=i4result;
  if (judge_result(res))
    return 0;
  printf("test OK\n\n");
  printf("test end\n");
}

static void init_i4(signed int *i4){*i4 = 1;}

static int judge_result(int a)
{
  if (a!=6) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
