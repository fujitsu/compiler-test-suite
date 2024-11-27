#include <stdio.h>
int gen_int(int a);
int false[39];
int main()
{
  int *p = false;

  int t1;
  int t2;
  int t3;
  int t4;
  int t5;
  int t6;
  int t7;
  int t8;
  int t9;
  int t10;

  t1 = gen_int (0);
  t2 = gen_int (0);
  t3 = gen_int (0);
  t4 = gen_int (0);
  t5 = gen_int (0);
  t6 = gen_int (0);
  t7 = gen_int (0);
  t8 = gen_int (0);
  t9 = gen_int (0);
  t10 = gen_int (0);

  t1++; t2++; t3++; t4++; t5++; t6++; t7++; t8++; t9++; t10++;
  if (*(p+0)) goto quit;
  t1++; t2++; t3++; t4++; t5++; t6++; t7++; t8++; t9++; t10++;
  if (*(p+1)) goto quit;
  t1++; t2++; t3++; t4++; t5++; t6++; t7++; t8++; t9++; t10++;
  if (*(p+2)) goto quit;
  t1++; t2++; t3++; t4++; t5++; t6++; t7++; t8++; t9++; t10++;
  if (*(p+3)) goto quit;
  t1++; t2++; t3++; t4++; t5++; t6++; t7++; t8++; t9++; t10++;
  if (*(p+4)) goto quit;

  if (t1 != 40 | t2 != 40 | t3 != 40 | t4 != 40 | t5 != 40 |
      t6 != 40 | t7 != 40 | t8 != 40 | t9 != 40 | t10 != 40)
    {
      printf("Failure1 in kernel %d \n",t1);
    }else{
      printf(" OKOKOK \n"); 
    }
  goto exit;
 quit:
  printf("Failure2 in kernel\n");
 exit:
  printf(" \n");
}

int gen_int(a)
int a;
{
  return a;
}
