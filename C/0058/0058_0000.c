

#include <stdio.h>

void test(){
  int n = 0;
  if (n) {
    char buffer[6];
    gets(buffer);
  }
}

int main(){
    test();
}
