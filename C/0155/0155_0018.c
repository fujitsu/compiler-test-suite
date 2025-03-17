#include<stdio.h>
#define MAX 10

int main() {
  int i;
  float data[MAX] = { 10.0F, 11.1F, 12.2F, 13.3F, 14.4F, 15.5F, 16.6F, 17.7F, 18.8F, 19.9F };
  float data2[MAX] = { 0 };

  for ( i = 1; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -1];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%lf ", data2[i]);
  }
  printf("\n");
}
