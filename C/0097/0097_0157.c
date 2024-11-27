#include<stdio.h>
volatile int v = 0;
typedef struct data_t {
  int c;
} DATA;
static void sub(int a, int b, DATA *data) 
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      v = 0;
      data->c = data->c + a * b;
    }
  }
  return;
}

int main()
{
  int a,b;
  DATA data;
  a = 1;
  b = 2;
  data.c = 0;
  sub(a,b,&data);
  if (data.c == 8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}
