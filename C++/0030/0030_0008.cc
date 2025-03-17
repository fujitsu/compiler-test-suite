#include <stdio.h>

#define VLEN 16
struct data {
  float f_data[VLEN];
};

static struct data make_data() {
  long int i;
  struct data tmp_data;
  for (i=0; i<VLEN; i++) {
    tmp_data.f_data[i] = (float)i;
  }
  return tmp_data;
}

int main() {
  struct data ans_data[10];
  long int i;

  for (i=0; i<10; i++) {
    ans_data[i] = make_data();
  }
  printf("%f\n",ans_data[1].f_data[2]);
  printf("%f\n",ans_data[2].f_data[10]);
  printf("%f\n",ans_data[3].f_data[7]);
  printf("%f\n",ans_data[4].f_data[5]);
  return 0;
}
