#include<cassert>

struct S2 
{   
    int i = 3;
    auto f1(){return [this]{return i;}();}
    void f4()
    {
        [this]{ assert(i==3);return i;}();
    }
};

int f3(int i){return i;}

int main()
{
   S2 s2;
   assert(s2.f1()==3);
   
   auto f2 = s2.f1();
   assert(f2==3);

   assert(f3(s2.f1())==3);
   
   s2.f4();
}
