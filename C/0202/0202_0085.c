#include <stdio.h>
static int JJ = 1;
#define N 10
int II = 2;
double r[N];
double s[N];
void sub_ocl(void){
  int i;
  for (i=0; i<N; ++i) {
    r[i] = s[i];
  }
}

int main()
{
  sub_ocl();
  printf(" OK\n");
  return 0;
}
