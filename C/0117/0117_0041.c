#include <stdio.h>
struct st {
  long long int  a1,a2,a3,a4,b1,b2,b3,b4;
};

void set_value_st(struct st *st1)
{
  st1->a1=1; st1->a2=1; st1->a3=1; st1->a4=1;
  st1->b1=0; st1->b2=0; st1->b3=0; st1->b4=0;
}
int main()
{
  struct st st1;
  long long int a=0,b=0,c=0,i=0;
  int judge[10]={0,1,2,3,4,5,6,7,8,9};
  set_value_st(&st1);

  do{
    switch(judge[i]){
    case 0 :
      a=(st1.a1 && !st1.b1 && st1.a2 && st1.a3)?1:2;
      break;
    case 1 :
      b=(!st1.b1 && !st1.b1 && !st1.b3 && !st1.b4)?1:2;
      break;
    case 2 :
      c=(st1.a1)?1:2;
      break;

    }
    i++;
  } while(i<10);

  if(a=1 && b==1 && c==1)
    printf("ok\n");
  else
    printf("ng a=%lld b=%lld c=%lld\n",a,b,c);
}
