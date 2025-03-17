#include <stdio.h>

struct data {
  double d_data;
  float  f_data;
  short  s_data;
  int    i_data;
  long   l_data;
};

static struct data init() {
  struct data tmp_data;
  tmp_data.d_data = 1.0;
  tmp_data.f_data = 2.0;
  tmp_data.s_data = 3;
  tmp_data.i_data = 4;
  tmp_data.l_data = 5;
  return tmp_data;
}

int main() {
  struct data ans_data[10], tmp;
  long int i;

  tmp = init();

  for (i=0; i<10; i++) {
    ans_data[i] = tmp;
  }
  printf("%f\n",ans_data[1].d_data);
  printf("%f\n",ans_data[2].f_data);
  printf("%d\n",ans_data[3].s_data);
  printf("%d\n",ans_data[4].i_data);
  printf("%d\n",ans_data[5].l_data);
  return 0;
}
