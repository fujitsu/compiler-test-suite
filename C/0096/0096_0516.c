#include <stdio.h>
struct str {
  union utest{
   int    member1;
   double member2;
  }un;
  int member3;
};

struct str init(){
  struct str tmp_str;
  tmp_str.un.member1 = 1;
  tmp_str.member3 = 2;
  return tmp_str;
}  
int main() {
  struct str str1,str2;

  str1 = init();
  str2 = str1;

  if(str2.un.member1 == 1){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
