#include <cassert>

struct M 
{   
    M(){} 
    M(int){} 
};

struct N : M 
{ 
    using M::M;
};

struct O : M 
{
    int d;
};

struct P : N, O 
{
    using N::N;
    using O::O;
    int mem = 1;
};

int main()
{
    P p(0);
    assert(p.mem == 1);
}
