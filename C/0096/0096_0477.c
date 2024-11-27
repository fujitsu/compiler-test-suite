#include <stdio.h>
struct str {
  int  member1;
};

struct str str2[5],str3[5];

void init(struct str *tmp_str){
  tmp_str->member1 = 1;
}
int main() {
  struct str str1;

  init(&str1);
  str2[4] = str1;
  str3[4] = str2[4];

  if( str3[4].member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
