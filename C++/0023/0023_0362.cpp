#include <cassert>

struct S
{
    int i;
    S():i(0){}
};
int main () 
{
   S cs;
   int S::*pm= &S::i;
   assert(++(cs.*pm) == 1);
}
