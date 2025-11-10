#include <stdio.h>
extern int sum(int,int);
extern int mult();

int main()
{
  int (*p) (int x, int y);
  int sResult;
  int (*q) ();
  int mResult;
  
  p = sum;   
  sResult = (*p) (10, 20);
  printf("sResult = %d\n", sResult);
  q = mult;  
  mResult = (*q) ();
  printf("mResult = %d\n", mResult);
  
  return 0;
}
