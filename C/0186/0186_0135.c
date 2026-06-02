#include <stdio.h>

#define VLEN 18
struct data {
  int     i_data;
  float f_data[VLEN];
  double  d_data;
};

static struct data make_data() {
  long int i;
  struct data tmp_data;
  tmp_data.i_data = 1;
  tmp_data.d_data = 2.0;
  for (i=0; i<VLEN; i++) {
    tmp_data.f_data[i] = (float)i;
  }
  return tmp_data;
}

int main() {
  struct data ans_data[100];
  long int i;

  for (i=0; i<100; i++) {
    ans_data[i] = make_data();
  }
  printf("%d\n",ans_data[10].i_data);
  printf("%f\n",ans_data[33].f_data[10]);
  printf("%f\n",ans_data[21].d_data);
  return 0;
}
