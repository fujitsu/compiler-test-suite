#include <stdio.h>
struct st{
  short int bit1:1;
  short int bit2:1;
};

void struct_sub(struct st* st1,struct st* st2,struct st* st3,struct st* st4,struct st* st5,int value)
{
  st1->bit1=st2->bit1=st3->bit1=st4->bit1=st5->bit1=value%2;
  st1->bit2=st2->bit2=st3->bit2=st4->bit2=st5->bit2=(value-1)%2;
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
  struct st st1,st2,st3,st4,st5,*stp1,*stp2,*stp3,*stp4,*stp5;
  stp1=&st1; stp2=&st2; stp3=&st3; stp4=&st4; stp5=&st5;

  for(i=0;i<10;i++){
    if(sub(c) && stp1->bit1 && !stp1->bit2 && stp2->bit1 && !stp2->bit2
 && stp3->bit1 && !stp3->bit2 && stp4->bit1 && !stp4->bit2
 && stp5->bit1 && !stp5->bit2) {
	break;
    }
    else if(a==0 && b==1){
      c+=1;
      struct_sub(&st1,&st2,&st3,&st4,&st5,c);
    }
    else
      a=0;b=1;
  }

  if(c==5)
    printf("ok\n");
  else
    printf("ng c=%d\n",c);
}

