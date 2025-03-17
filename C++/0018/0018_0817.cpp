




#include <valarray>
#include <cassert>

int main()
{
    {
        typedef int T;
        T a[] = {1, 2, 3, 4, 5};
        const unsigned N = sizeof(a)/sizeof(a[0]);
        const std::valarray<T> v(a, N);
        assert(v[v.size()-1] == 5);
        assert(end(v) - begin(v) == v.size());
    }
}
