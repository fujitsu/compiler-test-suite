#include <stdio.h>

struct data {
  float f_data1;
  float f_data2;
  float f_data3;
  float f_data4;
  float f_data5;
  float f_data6;
};

static struct data make_data() {
  struct data tmp_data;
  tmp_data.f_data1 = 1.0;
  tmp_data.f_data2 = 2.0;
  tmp_data.f_data3 = 3.0;
  tmp_data.f_data4 = 4.0;
  tmp_data.f_data5 = 5.0;
  tmp_data.f_data6 = 6.0;
  return tmp_data;
}

int main() {
  struct data ans_data[10];
  long int i;

  for (i=0; i<10; i++) {
    ans_data[i] = make_data();
  }
  printf("%f\n",ans_data[1].f_data1);
  printf("%f\n",ans_data[2].f_data2);
  printf("%f\n",ans_data[3].f_data3);
  printf("%f\n",ans_data[4].f_data4);
  printf("%f\n",ans_data[5].f_data5);
  printf("%f\n",ans_data[6].f_data6);
  return 0;
}
