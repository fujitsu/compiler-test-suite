


#include <initializer_list>
#include <cassert>

int main() {
    {
        std::initializer_list<int> i1 = {1, 2, 3};
        assert(i1.size() == 3);
        assert(*i1.begin() == 1);
        const int* b = i1.begin();
        assert(*b++ == 1);
    }
}
