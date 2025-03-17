#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int foo(const int n, const char * a, char * b){
  int i,ret;

  ret = 0;
  for(i = 0; i < n; i++){
    if ((long long)memchr(a, b[i], sizeof(char) * (i + 1)) == 0LL) {
      ret = i+1;
    }
  }
  return ret;
}

int main() {
  char b[] = "abcdefghixklmnopqrstuvwxyzabcdefghixklmnopqrstuvwxyzabcdefghixklmnopqrstuvwxyz";
  char a[] = "abcdefghixklmnopqrstuvwxyzabcdefghixklmnopqrstuvwxyzabcdefghixklmnopqrstuvwxyz";

  if (foo(20, a, b) != 0) {
    printf("ng\n");
  }
  printf("ok\n");
}
