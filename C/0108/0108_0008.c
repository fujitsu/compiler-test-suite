#include <stdio.h>

int sub (int in) {
  void* labels[] = {&&labelA, &&labelB, &&labelC};
  int ret = 0;

  if(in > 2)
    return -1;
  
  goto *(labels[in]);
  
 labelA:
  ret+=1;
  
 labelB:
  ret+=5;

 labelC:
  ret+=10;

  return ret;
}

int main() {
  int ret = 0;
  int i;
  for (i=0; i<1000; i++) {
    ret = sub (i%3);
  }
  printf("%d\n", ret);
}

