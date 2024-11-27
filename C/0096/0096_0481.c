#include <stdio.h>
struct str {
  int  member1;
  int  member2;
};

struct str init(){
  struct str tmp_str;
  tmp_str.member1 = 1;
  tmp_str.member2 = 2;
  return tmp_str;
}
int main() {
  struct str str1,str2;
  str1 = init();
  str2 = str1;

  if( str2.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
