#ifndef __CXX11_TEST_HEADER_NULLPTR_H__

#include "public1/004.h"
#include "public1/005.h"

#ifdef _HAS_CXX11_HEADER_CSTDDEF
# include <cstddef>
#else
namespace std
{
    typedef decltype(nullptr) nullptr_t;
}
#endif

using std::nullptr_t;

template <class T>
T prvalue()
{
    typedef typename remove_cv<T>::type U;
    static_assert((is_same<U, nullptr_t>::value), "not type nullptr_t");
    return U();
}

#endif 
