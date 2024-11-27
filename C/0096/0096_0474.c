#include <stdio.h>
struct str {
  int  member1;
};

void init(struct str *tmp_str){
  tmp_str->member1 = 1;
}
int main() {
  struct str str1,str2[5],str3;

  init(&str1);
  str2[4] = str1;
  str3 = str2[4];

  if( str3.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
