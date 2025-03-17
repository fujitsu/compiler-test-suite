




#include <valarray>
#include <cassert>

int main()
{
    {
        typedef int T;
        T a[] = {1, 2, 3, 4, 5};
        const unsigned N = sizeof(a)/sizeof(a[0]);
        std::valarray<T> v(a, N);
        *(end(v) - 1) = 10;
        assert(v[v.size()-1] == 10);
        assert(end(v) - begin(v) == v.size());
    }
}
