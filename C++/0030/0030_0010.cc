#include <stdio.h>

struct data {
  short s_data;
  int i_data;
  long l_data;
  float f_data;
  double d_data;
};

struct data ans_data;

static void make_data(struct data tmp_data) {
  ans_data.s_data = tmp_data.s_data;
  ans_data.i_data = tmp_data.i_data;
  ans_data.l_data = tmp_data.l_data;
  ans_data.f_data = tmp_data.f_data;
  ans_data.d_data = tmp_data.d_data;
}

int main() {
  struct data tmp_data[10];
  long int i;

  for (i = 0; i < 10; i++) {
    tmp_data[i].s_data = 1;
    tmp_data[i].i_data = 2;
    tmp_data[i].l_data = 3;
    tmp_data[i].f_data = 4.0;
    tmp_data[i].d_data = 5.0;
    make_data(tmp_data[i]);
  }

  printf("%d\n", ans_data.s_data);
  printf("%d\n", ans_data.i_data);
  printf("%d\n", ans_data.l_data);
  printf("%f\n", ans_data.f_data);
  printf("%f\n", ans_data.d_data);
  return 0;
}
