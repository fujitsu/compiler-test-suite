#include <stdio.h>
union uni{
  long long bit8:4;
  struct st{
    int bit2_1:1;
    int bit2_2:1;
    int bit2_3:1;
    int bit2_4:1;
  } st1;
};

void struct_sub(union uni *uni1,int value)
{
  uni1->bit8=(value*value*value)%8;
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
  union uni uni1;

  uni1.bit8=0;

  for(i=0;i<10;i++){
#if defined(sparc)
      if (sub(c) && uni1.st1.bit2_4 && uni1.st1.bit2_3  && uni1.st1.bit2_2){
#else
    if(sub(c) && uni1.st1.bit2_3 && uni1.st1.bit2_2  && uni1.st1.bit2_1){
#endif
      break;
    }
    else if(a==0 && b==1){
      c+=1;
      struct_sub(&uni1,c);
    }
    else
      a=0;b=1;
  }

  if(c==7)
    printf("ok\n");
  else
    printf("ng c=%d\n",c);
}

