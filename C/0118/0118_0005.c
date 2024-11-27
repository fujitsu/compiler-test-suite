#include <stdio.h>
#define nn 1000
#define Correct_answer 1000

int main()
{
  double a[nn],b[nn],c[nn],d[nn];
  int i,result;


  for (i=0; i<nn; i++) {
    a[i] = 0.0;
    b[i] = 1.0;
    c[i] = 1.0;
    d[i] = 1.0;
  }  

  for (i=0; i<nn; i++) {
    a[i] = b[i] + c[i] - d[i];
  }

  result = 0;
  for (i=0; i<nn; i++) {
    result += a[i];
  }
  if (result != Correct_answer) {
    printf("ng foo %d\n",result);
  } else {
    printf("ok\n");
  }
  return 0;
}
