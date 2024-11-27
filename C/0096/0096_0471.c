#include <stdio.h>
struct str {
  int  member1;
};

struct str str1;

void init(struct str *tmp_str){
  tmp_str->member1 = 1;
}
int main() {
  struct str str2,str3;

  init(&str1);
  str2 = str1;
  str3 = str2;

  if( str3.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
