#include <stdio.h>
struct str {
  int  member1;
};

void sub(struct str *str1){
  str1->member1 = 2;
}
int main() {
  struct str str1,str2;
  str1.member1 = 1;
  sub(&str1);
  str2 = str1;

  if( str2.member1 == 2 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
