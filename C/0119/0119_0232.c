#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
static char *ans[10] = {
" 0:  1  0  0  1  1  1  0  0  1  1  0  1",
" 1:  0  1  0  1  1  1  0  0  1  1  0  1",
" 2:  0  1  1  1  0  0  1  1  1  1  0  0",
" 3:  0  1  0  1  1  0  1  1  0  0  1  1",
" 4:  1  0  0  1  1  0  1  1  0  0  1  1",
" 5:  0  0  0  1  1  0  1  1  0  0  1  1",
" 6:  0  0  1  1  1  0  1  1  1  0  1  0",
" 7:  1  1  1  0  1  1  0  1  1  0  1  0",
" 8:  0  0  1  1  1  1  0  1  1  0  1  0",
" 9:  0  0  0  1  1  1  0  0  1  1  0  1"
};

#include <stdio.h>
#define l 0
#define h 1
int data_num=10;
struct data {
  int j;
  int k;
  int clk;
} data[] = { {  1,0,0 },
                 {  0,1,0 },
                 {  0,1,1 },
                 {  0,1,0 },
                 {  1,0,0 },
                 {  0,0,0 },
                 {  0,0,1 },
                 {  1,1,1 },
                 {  0,0,1 },
                 {  0,0,0 } };
typedef struct _rsffd {
  int q;
  int q_;
} rsffd;
int inv();
int nd2();
int nd3();
void rsff();
int main()
{
   char buf[80];
   rsffd ff1,ff2;
   int g1,g2,g3,g4,g5,g6,g7=0,g8=0,g9;
   int j,k,clk;
   int i;

   ff1.q = h;
   ff1.q_ = l;
   ff2.q = l;
   ff2.q_ = h;
   for(i=0;i<data_num;i++) {
     j=data[i].j;
     k=data[i].k;
     clk=data[i].clk;
     g9 = inv(clk);
     g1 = nd3( g8,j,clk );
     g2 = nd3( g7,k,clk );
     rsff(g1,g2,&ff1);
     g3 = ff1.q;
     g4 = ff1.q_;
     g5 = nd2( g3, g9);
     g6 = nd2( g4, g9);
     rsff(g5,g6,&ff2);
     g7 = ff2.q;
     g8 = ff2.q_;
 printf("%2d:%d %d ", i, j ,k);
 printf("%d  %d  %d  %d  %d", clk,g1,g2,g3,g4);
 printf("%d  %d  %d  %d  %d\n", g5,g6,g7,g8,g9);
   }
   puts(" END scrsk16 ");
exit (0);
}
int inv(a)
unsigned int a;
{
   int y;
   y = ~ a & 1;
   return (y);
}
int nd2(a,b)
unsigned int a,b;
{
  int y;
  y = ~ (a & b) & 1;
  return (y);
}
int nd3(a,b,c)
unsigned int a,b,c;
{
  int y;
  y = ~ ( a & b & c ) & 1;
  return (y);
}
void rsff(s,r,ptr)
int s,r;
rsffd *ptr;
{
  if( s== l && r == l ) {
    ptr -> q = h;
    ptr -> q_ = h;
    return ;
  }
  if( s== l && r == h ) {
    ptr -> q = h;
    ptr -> q_ = l;
    return ;
  }
  if( s==h && r==l) {
    ptr -> q = l;
    ptr -> q_ = h;
    return ;
  }
  if( s == l && r == l ) {
    return;
  }
}
