#include <stdio.h>
struct str {
  int  member1;
  int  member2;
};

struct str str2;

void init(struct str *str1) {
  str1->member1 = 1;
  str1->member2 = 1;
}
int main() {
  struct str str1;
  init(&str1);
  str2 = str1;

  if((str2.member1 == 1)&&(str2.member2 == 1)){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}