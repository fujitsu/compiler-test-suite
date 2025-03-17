

#include <stdio.h>

int main() {
  long int aaa, bbb, ccc;
  long int i;
  
  bbb = 1;
  ccc = 2;
  
  for (i=0; i<50; i++) {
    aaa = bbb + ccc + i;
  }

  if (aaa == 52) {
    printf("OK\n");
  } else {
    printf("NG(%d)\n",aaa);
  }
  return 1;
}
