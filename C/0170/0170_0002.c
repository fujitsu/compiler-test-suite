#include <stdio.h>

#define n 100
#define EXPECTED_VALUE 1

int main()
{
  double a[n][4];
  int i,j,result;


  for (i=0; i<4; i++) {
    for (j=0; j<n; j++) {
      a[j][i] = 1.0;
    }
  }

  result = (int)a[1][1];
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng foo %d\n",result);
  }

  return 0;
}
