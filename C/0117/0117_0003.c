#include <stdio.h>
struct st{
  long long bit1:2;
  long long int bit2:2;
};

void struct_sub(struct st* st1,int value)
{
  st1->bit1=value%2;
  st1->bit2=(value-1)%2;
}

int sub(int c)
{
  if(c>=5)
    return 1;
  else
    return 0;
}
int main()
{
  int a=1,b=0,c=1;
  int i;
  struct st st1;

  st1.bit1=0;  st1.bit2=0;

  for(i=0;i<10;i++){
    if(sub(c) && st1.bit1 && !st1.bit2) {
	break;
    }
    else if(a==0 && b==1){
      c+=1;
      struct_sub(&st1,c);
    }
    else
      a=0;b=1;
  }

  if(c==5)
    printf("ok\n");
  else
    printf("ng c=%d\n",c);
}

