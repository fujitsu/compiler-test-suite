#include <stdio.h>
struct str {
  int  member1;
};

struct str str1[5];

struct str init(){
  struct str tmp_str;

  tmp_str.member1 = 1;

  return tmp_str;
}
int main() {
  struct str str2[5];
  int i,j;

  for( i = 0; i < 5; i++ ){
    str1[i] = init();
  }

  for( j = 0; j < 5; j++ ){
    str2[j] = str1[j];
  }

  if( str2[4].member1 == 1 ){
    printf("OK\n");
  }else{
    printf("NG\n");
  }

}

