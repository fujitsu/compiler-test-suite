#include <cstdio>

class M
{
public:
  int m;
  void func();
  M(){puts("M");}
};

void M::func() {
  puts("hello");
}

class N
{
public:
  int m;
  
  
};

union U
{
  static int st;
    M m; 
    N n; 

    
    
    U() { }
    ~U() { }
} ;


int main()
{
    U u;
}
