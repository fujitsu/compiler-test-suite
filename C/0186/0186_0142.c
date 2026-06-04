#include <stdio.h>

struct data {
  float f_data1;
  float f_data2;
  float f_data3;
  float f_data4;
};

static struct data init() {
  struct data tmp_data;
  tmp_data.f_data1 = 1.0;
  tmp_data.f_data2 = 2.0;
  tmp_data.f_data3 = 3.0;
  tmp_data.f_data4 = 4.0;
  return tmp_data;
}

int main() {
  struct data ans_data[10], tmp;
  long int i;

  tmp = init();

  for (i=0; i<10; i++) {
    ans_data[i] = tmp;
  }
  printf("%f\n",ans_data[1].f_data1);
  printf("%f\n",ans_data[2].f_data2);
  printf("%f\n",ans_data[3].f_data3);
  printf("%f\n",ans_data[4].f_data4);
  return 0;
}
