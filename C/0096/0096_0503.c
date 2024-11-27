#include <stdio.h>
struct str {
  long  member1;
};

void init(struct str *tmp_str){

  tmp_str->member1 = 1;

}
int main() {
  struct str str1[5],str2[5];

  init(&str1[4]);
  str2[4] = str1[4];

  if( str2[4].member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
