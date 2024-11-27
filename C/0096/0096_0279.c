#include <stdio.h>

int main()
{
  int i,aaaa;

  for( i=0;i<100001;i++ ){

    if(i==10000){
      aaaa=28;
      goto label_out;
    }else{
      aaaa=27;
    }
  label_out:;
  }
  printf("aaaa=%d\n",aaaa);
}
