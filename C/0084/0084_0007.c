#include <stdio.h>

#define MKSTRING(str) # str
#define output(i) printf("%d %d\n", i ## 1, i ##2)

int main(void)
{
  int value;
  int i1,i2;
  int count1, count2;
  
  value = 10;
  i1 = i2 = 20;
  count1 = 30;
  count2 = 40;

  
  printf("%s is %d\n", MKSTRING(value), value); 

  
  output(i);
  output(count);
  return 0;
}
