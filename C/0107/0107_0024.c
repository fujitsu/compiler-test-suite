#include <stdio.h>

void foo(float *q, int *p)
{
  int i;
  for(i=0;i<1000;i++) {
    q[i] = p[i];
  }
}

int array[1001];
int *pp = &array[1];
float *qq = (float *)&array; 

int main()
{
  int i;
  for(i=0;i<1001;i++) {
    array[i] = i;
  }

  foo(qq, pp);
  
  if (*(float *)&array[0] == 1.0 &&
      *(float *)&array[1] == 2.0 &&
      *(float *)&array[2] == 3.0 &&
      *(float *)&array[3] == 4.0 &&
      *(float *)&array[998] == 999.0 &&
      *(float *)&array[999] == 1000.0) {
    puts("PASS");
  }
  else {
    puts("NG");
    printf("%g\n", *(float *)&array[0] );
    printf("%g\n", *(float *)&array[1] );
    printf("%g\n", *(float *)&array[2] );
    printf("%g\n", *(float *)&array[3] );
    printf("%g\n", *(float *)&array[998] );
    printf("%g\n", *(float *)&array[999] );
  }
}
