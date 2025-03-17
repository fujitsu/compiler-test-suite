#include  <stdio.h>

struct bit {
  unsigned int a:4;
  unsigned int b:4; 
};

struct bit funb( struct bit stb5 )
{
  return (stb5);
}
int main()
{
  struct bit stb1;
  struct bit stb2;
  struct bit *astb;
  
  astb = &stb2;
  astb->a = 9;
  printf("astb->a=%d\n",astb->a);
  stb1.a = 2;
  stb2 = funb(stb1);  
  printf("astb->a=%d\n",astb->a);
}
 
