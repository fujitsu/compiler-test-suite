#include <stdio.h>
struct st {
  long double a1,a2,a3,b1,b2,b3,b4;
};

void set_value(struct st *st1)
{
  st1->a1=st1->a2=st1->a3=1.0;
  st1->b1=st1->b2=st1->b3=st1->b4=0.0;
}
int main()
{
  struct st st1;
  long double a,b,c;
  int i;
  int judge[10]={0,1,2,3,4,5,6,7,8,9};
  set_value(&st1);

  a=b=c=0.0; i=0;

  do{
    switch(judge[i]){
    case 1:
      a=(st1.a1)?(!st1.b1)?1:2:3;  
      break;
    case 2:
      b=(st1.a2)?(!st1.b2)?1:2:3;   break;
    case 3:
      c=(!st1.b3)?(!st1.b4)?1:2:3;   break;
    }
    i++;
  }  while(i<10);

  if(a==1.0 && b==1.0 && c==1.0)
    printf("ok\n");
  else{
    printf("ng\n");
    printf("a=%Lf b=%Lf c=%Lf\n",a,b,c);
  }
}
