#include <stdio.h>
struct str {
  int   member1;
};

int ts = 1;

int checkdata(struct str *str1){
  int tmp_member;
  tmp_member = str1->member1;
  return tmp_member;
}
int main() {
  struct str  str1, str2;

  str1.member1 = 1;
  if( ts == checkdata(&str1)){
    str2 = str1;
  }else{
    str2.member1 = ts;
  }
    
  if( str2.member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
