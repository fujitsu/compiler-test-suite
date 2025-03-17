




#include <random>
#include <cassert>
#include <sstream>
#include <iostream>
int main()
{
    {
        unsigned a[] = {3, 5, 7};
        std::seed_seq sseq(a, a+3);
        std::linear_congruential_engine<unsigned, 5, 7, 11> e1(sseq);
        std::linear_congruential_engine<unsigned, 5, 7, 11> e2(4);
        assert(e1 == e2);
    }
}
