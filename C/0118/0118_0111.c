
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 6420

struct st {
  double a;
  double b;
};

typedef struct st ST;

void sub(ST *st1, ST *st2, ST *st3 ,ST *st4 ,int *c, int n, int k)
{
  int i;
  for (i=0; i<n; i++) {
    st1[i].a = st1[i].a + st1[i].b;
  }
  for (i=0; i<n; i=i+100) {
    st2[i].a = st2[i].a + st2[i].b;
  }
  for (i=0; i<n; i=i+k) {
    st3[i].a = st3[i].a + st3[i].b;
  }
  for (i=0; i<n; i=i+k) {
    st4[c[i]].a = st4[c[i]].a + st4[c[i]].b;
  }
  return;
}

int main()
{
  ST st1[loop_num], st2[loop_num];
  ST st3[loop_num], st4[loop_num];
  int c[loop_num];
  int i,result,k;

  for (i=0; i<loop_num; i++) {
    st1[i].a = 1.0;
    st1[i].b = 2.0;
    st2[i].a = 1.0;
    st2[i].b = 2.0;
    st3[i].a = 1.0;
    st3[i].b = 2.0;
    st4[i].a = 1.0;
    st4[i].b = 2.0;
    c[i] = i;
  }

  sub(st1,st2,st3,st4,c,loop_num,10);

  result = 0.0;
  for (i=0; i<loop_num; i++) {
    result += st1[i].a + st2[i].a + st3[i].a + st4[i].a;
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
