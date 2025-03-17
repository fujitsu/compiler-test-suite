#include<cassert>

struct S2 
{   
    int mem = 3;
    int f1(int i);
    int f2(int i);
    int f3(int i);
    int f4(int i);
};

int S2::f1(int i) 
{
    return [=,&i](){
       assert(mem==3);
       return i;
    }();
} 

int S2::f2(int i)
{
    int a = [=,&i](){assert(mem==3);return i;}();
    return a;
}

int S2::f3(int i)
{
    return f2([=,&i](){assert(mem==3);return i;}());
}

int S2::f4(int i)
{
    [=,&i](){assert(mem==3);return i;}();
    return i;
}

int main()
{
   S2 s2;
   assert(s2.f1(4)==4);

   assert(s2.f2(5)==5);

   assert(s2.f3(6)==6);

   assert(s2.f4(7)==7);
}
