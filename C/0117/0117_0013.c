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

int sub(int c){return(c>5)?1:0;}
int main()
{
  int a=1,b=0,c=1;
  int i;
  union uni uni1,uni2;

  uni1.bit8=0x5; 

  for(i=0;i<10;i++){
    if(sub(c)==1)
      if (uni1.st1.bit2_3 ^ uni2.st1.bit2_2 )
	{a=1; b=1;break;}
      else
	a=3;
    else if(a==0 && b==1){
      c+=1;
    }
    else
      a=0;b=1;
  }

  if(a=1 && b==1 )
    printf("ok\n");
  else
    printf("ng a=%d b=%d c=%d\n",a,b,c);
}

  
