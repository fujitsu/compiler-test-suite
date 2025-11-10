
#include <stdio.h>
static int  judge_result();
static int init_i4();

#define EQ(op1,op2,op3) \
  if (op2##d1==op3##d2) \
     op1##result = 1; \
  else \
     op1##result = 0

 void lto_sub_33()
{
  signed int       i4d1, i4d2;
  signed int       i4result,res=0;

  
  printf(" test start\n\n");
  init_i4(&i4d1);
  init_i4(&i4d2);
  
  EQ(i4,i4,i4); 
  res+=i4result;
  EQ(i4,i4,i4); 
  res+=i4result;
  EQ(i4,i4,i4); 
  res+=i4result;
  EQ(i4,i4,i4); 
  res+=i4result;
  EQ(i4,i4,i4); 
  res+=i4result;
  EQ(i4,i4,i4); 
  res+=i4result;
  if (judge_result(res))
    return;
  printf(" test OK\n\n");
  printf(" test end\n");
}

static int init_i4(signed int *i4){*i4 = 1;}

static int judge_result(a)
     int a;
{
  if (a!=6) {
    printf("NG\n");
    return 1;
  }
  return 0;
}
