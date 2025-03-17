#include<cassert>

struct S2 
{ 
    int f1(int i);
    int f2(int i);
};

int S2::f1(int i) 
{
    auto a = [i](){return i;};
    int v = a();
    return v;
} 

int S2::f2(int i)
{
    return [i](){return i;}();
}

int f3(int i)
{
    return i;
}

int main()
{
   S2 s2;
   assert(s2.f1(2)==2);

   assert(s2.f2(2)==2);
   
   int i = 2;
   assert(f3([i](){return i;}())==2);
   
   assert([i](){return i;}()==2);
}
