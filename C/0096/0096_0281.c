#include <stdio.h>

int main()
{
  int i,aaaa1,aaaa2;

  for( i=0;i<100001;i++ ){

    if(i==1000){
      aaaa1 = 10;
    }else{
      aaaa2 = 100;
    }
  }
  printf("aaaa1=%d\n",aaaa1);
  printf("aaaa2=%d\n",aaaa2);
}
