
#include <stdio.h>

#define LEN 5

int sub(){
  return 4;
}

int main()
{
  int i, a[10],length=LEN;




  int aa = (int)(1+2+sub());
#pragma omp parallel for num_threads(aa)
  for ( i=0 ; i<10 ; i++) {
    a[i] = i;
  }

  if (a[length] == length) {
    printf("",a[length]);
  } else {
    printf("",a[length]);
  }
  return 0;
}
