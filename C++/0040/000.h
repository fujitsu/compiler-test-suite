#ifndef __CXX11_TEST_HEADER_INITIALIZER_LIST_H__
#define __CXX11_TEST_HEADER_INITIALIZER_LIST_H__

#include "public2/004.h"
#include "public2/006.h"

#ifdef _HAS_CXX11_HEADER_INITIALIZER_LIST

# include <initializer_list>

#else

namespace std
{
    template<class E>
    class initializer_list
    {
        const E* __begin_;
        size_t    __size_;
    public:
        typedef E        value_type;
        typedef const E& reference;
        typedef const E& const_reference;
        typedef size_t   size_type;

        typedef const E* iterator;
        typedef const E* const_iterator;

        initializer_list() _CXX11_NOEXCEPT : __begin_(0), __size_(0) {}

        size_t   size()  const _CXX11_NOEXCEPT {return __size_;}
        const E* begin() const _CXX11_NOEXCEPT {return __begin_;}
        const E* end()   const _CXX11_NOEXCEPT {return __begin_ + __size_;}
    };

    template<class E>
    const E* begin(initializer_list<E> __il) _CXX11_NOEXCEPT
    {
        return __il.begin();
    }

    template<class E>
    const E* end(initializer_list<E> __il) _CXX11_NOEXCEPT
    {
        return __il.end();
    }

}

#endif

#endif
