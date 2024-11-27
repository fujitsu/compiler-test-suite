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
  int i,counter,give_up;
  union uni uni1;

  uni1.bit8=0; counter=0; give_up=0;

  while(!give_up){
    for(i=0;i<10;i++){
      if(sub(c)){
#if defined(sparc)
      if (uni1.st1.bit2_4 && uni1.st1.bit2_3  && uni1.st1.bit2_2){
#else
	if (uni1.st1.bit2_3 && uni1.st1.bit2_2  && uni1.st1.bit2_1){
#endif
	  break;
	}
	else{
	  c+=1;
	  struct_sub(&uni1,c);
	}
      }
      else if(a==0 && b==1){
	c+=1;
	struct_sub(&uni1,c);
      }
      else
	a=0;b=1;
    }
    counter++;
    give_up = (counter >= 1);
  }

  if(c==7)
    printf("ok\n");
  else
    printf("ng c=%d\n",c);
}

