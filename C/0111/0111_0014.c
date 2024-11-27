#include <stdio.h>
int gen_int(int a);
int false[19];
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

  t1 = gen_int (1);
  t2 = gen_int (1);
  t3 = gen_int (1);
  t4 = gen_int (1);
  t5 = gen_int (1);

  t1 *= 2; t2 *= 2; t3 *= 2; t4 *= 2; t5 *= 2;
  if (*(p+0)) goto quit;

  t1 *= 2; t2 *= 2; t3 *= 2; t4 *= 2; t5 *= 2;
  if (*(p+1)) goto quit;

  t1 *= 2; t2 *= 2; t3 *= 2; t4 *= 2; t5 *= 2;
  if (*(p+2)) goto quit;


  if (t1 != 8 | t2 != 8 | t3 != 8 |
      t4 != 8 | t5 != 8 )
    {
      printf(" NGNGNG %d %x \n",t1,t2);
    }else{
      printf(" OKOKOK \n");
    }
  goto end;
 quit:
  printf(" NGNGNG \n");
 end:
  printf(" \n");
}
int gen_int(a)
     int a;
{
  return a;
}
