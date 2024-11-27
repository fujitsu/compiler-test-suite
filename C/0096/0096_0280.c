#include <stdio.h>

int main()
{
  int i,aaaa;

  for( i=0;i<100001;i++ ){

    if(i==1000){
      aaaa = i * 1;
    }else{
      aaaa = i * 2;
    }
  }
  printf("aaaa=%d\n",aaaa);
}
