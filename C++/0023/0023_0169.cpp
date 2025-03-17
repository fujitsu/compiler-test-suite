#include<cassert>

struct S2 
{   
    int i = 3;
    int f1(int i)
    {
        return [&i,*this]{return i;}();
    }
    
    int f2(int i)
    {
       int a = [&i,*this]{return i;}();
       return a;
    }
    
    int f3(int i)
    {
        return i;
    }
    
    void f4(int i)
    {
        [&i,*this]{ return i;}();
    }
};

int main()
{
    S2 s;
    assert(s.f1(1)==1);

    assert(s.f2(2)==2);

    assert(s.f3(s.f1(3))==3);

    s.f4(4);
}
