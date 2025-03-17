#include <cassert>

struct A
{
  int x;
  struct B 
  {
    B(int a,int b){i=a;j=b;}
    int i;
    int j;
  } b;
};
 
int main()
{
   A a = {1,{2, 3}};
   assert(a.x==1);
   assert(a.b.i==2);
   assert(a.b.j==3);
}
