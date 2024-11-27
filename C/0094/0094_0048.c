#include <string.h>
#include  <stdio.h>

struct bf1{
  signed char  b7:1,b6:1,b5:1,b4:1,b3:1,b2:1,b1:1,b0:1;
} bitf1[8];
char Ans[]={1,3,7,15,31,63,127,-1};
int main()
{
  char  int_1[8],sum_of_bf();
  void  bit_on();
  struct bf1 b_box,*bitp;
  short i;
 
  b_box.b7=0;
  b_box.b6=0; 
  b_box.b5=0; 
  b_box.b4=0; 
  b_box.b3=0; 
  b_box.b2=0; 
  b_box.b1=0; 
  b_box.b0=0; 

  for(i=0;i<8;i++){
    bitf1[i].b7=0;
    bitf1[i].b6=0; 
    bitf1[i].b5=0; 
    bitf1[i].b4=0; 
    bitf1[i].b3=0; 
    bitf1[i].b2=0; 
    bitf1[i].b1=0; 
    bitf1[i].b0=0; 
    int_1[i]   =0;
  }
  for(i=0,bitp= &b_box;i<8;i++){
    bit_on(i,bitp);
    bitf1[i]=b_box;
    strncpy(&(int_1[i]),&(bitf1[i]),1);
  }
  if (
    Ans[0]== sum_of_bf(bitf1[0].b7,bitf1[0].b6,bitf1[0].b5,bitf1[0].b4,
                       bitf1[0].b3,bitf1[0].b2,bitf1[0].b1,bitf1[0].b0,0) &&
    Ans[1]== sum_of_bf(bitf1[1].b7,bitf1[1].b6,bitf1[1].b5,bitf1[1].b4,
                       bitf1[1].b3,bitf1[1].b2,bitf1[1].b1,bitf1[1].b0,1) &&
    Ans[2]== sum_of_bf(bitf1[2].b7,bitf1[2].b6,bitf1[2].b5,bitf1[2].b4,
                       bitf1[2].b3,bitf1[2].b2,bitf1[2].b1,bitf1[2].b0,2) &&
    Ans[3]== sum_of_bf(bitf1[3].b7,bitf1[3].b6,bitf1[3].b5,bitf1[3].b4,
                       bitf1[3].b3,bitf1[3].b2,bitf1[3].b1,bitf1[3].b0,3) &&
    Ans[4]== sum_of_bf(bitf1[4].b7,bitf1[4].b6,bitf1[4].b5,bitf1[4].b4,
                       bitf1[4].b3,bitf1[4].b2,bitf1[4].b1,bitf1[4].b0,4) &&
    Ans[5]== sum_of_bf(bitf1[5].b7,bitf1[5].b6,bitf1[5].b5,bitf1[5].b4,
                       bitf1[5].b3,bitf1[5].b2,bitf1[5].b1,bitf1[5].b0,5) &&
    Ans[6]== sum_of_bf(bitf1[6].b7,bitf1[6].b6,bitf1[6].b5,bitf1[6].b4,
                       bitf1[6].b3,bitf1[6].b2,bitf1[6].b1,bitf1[6].b0,6) &&
    Ans[7]== sum_of_bf(bitf1[7].b7,bitf1[7].b6,bitf1[7].b5,bitf1[7].b4,
                       bitf1[7].b3,bitf1[7].b2,bitf1[7].b1,bitf1[7].b0,7))
    printf("cmdth008   ok\n");
  else
    printf("cmdth008  ng\n");
}
void bit_on(n,p)
long n;
struct bf1 *p;
{
  switch (n) {
    case 0: p->b0=1;
            break;
    case 1: p->b1=1;
            break;
    case 2: p->b2=1;
            break;
    case 3: p->b3=1;
            break;
    case 4: p->b4=1;
            break;
    case 5: p->b5=1;
            break;
    case 6: p->b6=1;
            break;
    case 7: p->b7=1;
            break;
  }
  return;
}
char sum_of_bf(b7,b6,b5,b4,b3,b2,b1,b0,n)
char b7,b6,b5,b4,b3,b2,b1,b0;
long n;
{
  char  ans=0,i;
  char       work=0;

  if (b7) ans += 0x80;
  if (b6) ans += 0x40;
  if (b5) ans += 0x20;
  if (b4) ans += 0x10;
  if (b3) ans += 8;
  if (b2) ans += 4;
  if (b1) ans += 2;
  if (b0) ans += 1;
  printf("%d %d\n",n,ans);
  return ans;
}
