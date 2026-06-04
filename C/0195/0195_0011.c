#include <stdio.h>
#include <stdbool.h>
#ifndef DATA_TYPE
#define DATA_TYPE _Float16
#endif
typedef DATA_TYPE DATA;

DATA test_MSCATTER() {
  DATA sum = 0;
  DATA t_data[100];
#pragma clang loop vectorize(disable)
  for (int i = 0; i < 100; i++) {
    t_data[i] = i;
  }

#pragma clang loop vectorize(enable)
#pragma clang loop unroll(disable)
  for (int i = 0; i < 100; i++) {
    t_data[i*12%100] = i;
  }
#pragma clang loop vectorize(disable)
  for (int j = 0; j < 100; j++) {
    sum += t_data[j];
  }
  return sum;
}

DATA test_MGATHER() {
  DATA sum = 0;
  DATA t_data[100];
#pragma clang loop vectorize(disable)
  for (int i = 0; i < 100; i++) {
    t_data[i] = i;
  }

#pragma clang loop vectorize(enable)
#pragma clang loop unroll(disable)
  for (int k = 0; k < 100; k++) {
    sum += t_data[k*12%100];
  }
  return sum;
}

int main() {
  DATA result_s = 0;
  DATA result_g = 0;
  DATA validation_s = 0;
  DATA validation_g = 0;
  DATA s_data[100];
  DATA g_data[100];
#pragma clang loop vectorize(disable)
  for (int i = 0; i < 100; i++) {
    s_data[i] = i;
    g_data[i] = i;
  }
  result_g = test_MGATHER();
  result_s = test_MSCATTER();

#pragma clang loop vectorize(disable)
  for (int i = 0; i < 100; i++) {
    s_data[i*12%100] = i;
  }
#pragma clang loop vectorize(disable)
  for (int j = 0; j < 100; j++) {
    validation_s += s_data[j];
  }
#pragma clang loop vectorize(disable)
  for (int k = 0; k < 100; k++) {
    validation_g += g_data[k*12%100];
  }

  if (validation_s == result_s && validation_g == result_g ) {
    printf("OK\n"); 
  } else {
    printf("NG\n");
  }
  return 0;
}
