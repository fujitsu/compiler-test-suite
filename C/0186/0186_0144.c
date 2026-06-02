#include <stdio.h>

#define VLEN 16
struct data {
  int   i_data;
  float f_data[VLEN];
};

static struct data init() {
  struct data tmp_data;
  long int i;
  tmp_data.i_data = 1;
  for (i=0; i<VLEN; i++) {
    tmp_data.f_data[i] = (float)i;
  }
  return tmp_data;
}

int main() {
  struct data ans_data[10], tmp;
  long int i;

  tmp = init();

  for (i=0; i<10; i++) {
    ans_data[i] = tmp;
  }
  printf("%d\n",ans_data[0].i_data);
  printf("%f\n",ans_data[1].f_data[2]);
  printf("%f\n",ans_data[2].f_data[4]);
  printf("%f\n",ans_data[3].f_data[6]);
  printf("%f\n",ans_data[4].f_data[8]);
  return 0;
}
