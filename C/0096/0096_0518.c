#include <stdio.h>
struct str {
  union utest{
    int  member1;
    long member2;
  }un;
  int  member3;
};

struct str init() {
  struct str tmp_str;

  tmp_str.un.member1 = 1;
  tmp_str.member3 = 2;

  return tmp_str;
}
int main() {
  struct str str1[5],str2[5];
  int i,j;

  for(i = 0; i < 5; i++){
    str1[i] = init();
  }
  
  for(j = 0; j < 5; j++){
    str2[j] = str1[j];
  }

  if(str2[4].un.member1 == 1){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
