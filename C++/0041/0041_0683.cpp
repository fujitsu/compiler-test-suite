#include "public3/004.h"
#include "public3/005.h"

template <class _Tp>
class allocator {};

template <class _Tp, class _Alloc>
class vector {};

template <class T>
using alias_vector = vector<T, allocator<T> >;

namespace ns_test
{
    template <class T>
    using alias_vector = vector<T, allocator<T> >;
}

class cls_test
{
public:
    template <class T>
    using alias_vector = vector<T, allocator<T> >;
    class cls_nest
    {
    public:
        template <class T>
        using alias_vector = vector<T, allocator<T> >;
    };
};

void test()
{
    typedef vector<int, allocator<int> > vector_int;
    static_assert((is_same<alias_vector<int>, vector_int >::value), "not expected type");
    static_assert((is_same<ns_test::alias_vector<int>, vector_int >::value), "not expected type");
    static_assert((is_same<cls_test::alias_vector<int>, vector_int >::value), "not expected type");
    static_assert((is_same<cls_test::cls_nest::alias_vector<int>, vector_int >::value), "not expected type");
    
    
    
}

PASS_CASE_MAIN_FUNCTION
