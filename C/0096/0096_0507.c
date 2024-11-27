#include <stdio.h>
struct str {
  long  member1;
};

struct stru {
  int   member1;
};
int main() {
  struct str  str1;
  struct stru str2;

  str1.member1 = 1;
  str2.member1 = str1.member1;

  if( str2.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
