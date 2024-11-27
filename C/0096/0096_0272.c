#include <stdio.h>

#include <stdlib.h>
struct aaaaou {
  int age;
};
int main()
{
  int i;
  struct aaaaou *aaaa;

  aaaa = (struct aaaaou *)malloc(sizeof(struct aaaaou *));
  for( i=0;i<100001;i++ ){
    
    if(i==1000){
      aaaa->age=28;
    }else{
      aaaa->age=27;
    }
  }
  printf("aaaa->age=%d\n",aaaa->age);
  free (aaaa);
}
  
