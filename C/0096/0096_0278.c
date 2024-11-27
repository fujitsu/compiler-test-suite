#include <stdio.h>

int main()
{
  int i,aaaa;

  for( i=0;i<100001;i++ ){
    
    if(i==0)
      goto label_in;
    
    if(i==1000){
    label_in:;
      aaaa=28;
    }else{
      aaaa=27;
    }
  }
  printf("aaaa=%d\n",aaaa);
}

