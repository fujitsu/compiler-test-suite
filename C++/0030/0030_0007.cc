#include <stdio.h>

struct data {
  short   s_data;
  int     i_data;
  long    l_data;
  float   f_data;
  double  d_data;
};

static struct data make_data() {
  struct data tmp_data;
  tmp_data.s_data = 1;
  tmp_data.i_data = 2;
  tmp_data.l_data = 3;
  tmp_data.f_data = 4.0;
  tmp_data.d_data = 5.0;
  return tmp_data;
}

int main() {
  struct data ans_data[10];
  long int i;

  for (i=0; i<10; i++) {
    ans_data[i] = make_data();
  }
  printf("%d\n",ans_data[1].s_data);
  printf("%d\n",ans_data[2].i_data);
  printf("%d\n",ans_data[3].l_data);
  printf("%f\n",ans_data[4].f_data);
  printf("%f\n",ans_data[5].d_data);
  return 0;
}
