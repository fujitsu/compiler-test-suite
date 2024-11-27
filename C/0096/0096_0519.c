#include <stdio.h>
struct str {
  union utest{
    int  member1;
    long member2;
  }un;
};

void init(struct str *tmp_str) {
  tmp_str->un.member1 = 1;
}
int main() {
  struct str str1[5],str2[5];
  int i,j;

  for(i = 0; i < 5; i++){
    init(&str1[i]);
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
