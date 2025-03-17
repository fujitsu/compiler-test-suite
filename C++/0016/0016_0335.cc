

#include <stdio.h>
class A {
public:
    int a;
    char b;
    void f();
};
void A::f(){
a++;
b++;
}

class B: public A {
public:
    int a;
    void f();
};
void B::f(){
a++;
b++;
}

union U {
    int a, b;
};

struct S {
    int a, b;
};

A aobj;
B bobj;
U uobj;
S sobj;

template<class T> class vector {
public:
    int sz;
    T& operator[](int);
    vector(int){}
};

vector<int>    aa(20);
vector<char*>  bb(20);

template<class T> void sort(vector<T>);

void sort(vector<char*>){}
void sort(vector<int>){}

void f(vector<char*>& cv, vector<int>& ci){
    sort(cv);
    sort(ci);
}

class N {
  public:
    int na;
    class M {
      public:
        int ma,mb;
        int f(int a){return a;}
    }mobj;
}nobj;

int main(){
    aobj.a = 1;
    aobj.b = 1;
    bobj.a = 1;
    nobj.mobj.ma = 1;
    nobj.mobj.f(1);
    aobj.f();
    bobj.f();
    puts("ok");
    return 0;
}
