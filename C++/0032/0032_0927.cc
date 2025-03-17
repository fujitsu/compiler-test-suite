
#include <stdio.h>

static union{
  int m01;
};
int main() {
  static union{
    int m02;
  };
  m01 = 10;
  m02 = 20;
  if (m01==10 && m02==20)
    printf("ok\n");
  else
    printf("ng\n");
}

