#include <stdio.h>
#define nn 100
#define Correct_answer 10000

int main()
{
  double a[nn][nn],b[nn][nn];
  int i,j,result;

  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      a[i][j] = 0.0;
      b[i][j] = 1.0;
    }
  }  


  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      a[i][j] = b[i][j];
    }
  }

  result = 0;
  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      result += a[i][j];
    }
  }
  if (result != Correct_answer) {
    printf("ng foo %d\n",result);
  } else {
    printf("ok\n");
  }
  return 0;
}
