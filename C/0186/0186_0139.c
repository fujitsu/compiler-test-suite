
#include <stdio.h>

struct data {
  float f_data1;
  float f_data2;
  float f_data3;
  float f_data4;
};

struct data ans_data;

static void make_data(struct data tmp_data) {
  ans_data.f_data1 = tmp_data.f_data1;
  ans_data.f_data2 = tmp_data.f_data2;
  ans_data.f_data3 = tmp_data.f_data3;
  ans_data.f_data4 = tmp_data.f_data4;
}

int main() {
  struct data tmp_data[10];
  long int i;

  for (i=0; i<10; i++) {
    tmp_data[i].f_data1 = 1.0;
    tmp_data[i].f_data2 = 2.0;
    tmp_data[i].f_data3 = 3.0;
    tmp_data[i].f_data4 = 4.0;
    make_data(tmp_data[i]);
  }

  printf("%f\n",ans_data.f_data1);
  printf("%f\n",ans_data.f_data2);
  printf("%f\n",ans_data.f_data3);
  printf("%f\n",ans_data.f_data4);
  return 0;
}
