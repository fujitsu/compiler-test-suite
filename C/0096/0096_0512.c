#include <stdio.h>
struct str {
  union utest{
   int    member1;
   double member2;
  }un;
  int member3;
};
int main() {
  struct str str1,str2;

  str1.un.member2 = 1;
  str1.member3 = str1.un.member2;
  str2 = str1;

  if(str2.un.member2 == 1){
    printf("OK\n");
  }else{
    printf("NG\n");
  }
}
