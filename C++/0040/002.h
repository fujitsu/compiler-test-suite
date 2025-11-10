#ifndef __CPP11_TEST_HEADER_RVALUE_REFERENCE_H__
#define __CPP11_TEST_HEADER_RVALUE_REFERENCE_H__

#include "public1/005.h"

template <class T> T   prvalue(typename enable_if<!is_reference<T>::value, void*>::type = 0);
template <class T> T&& xvalue (typename enable_if<!is_lvalue_reference<T>::value, void*>::type = 0);
template <class T> T&  lvalue ();

struct one { char __;    };
struct two { char __[2]; };

template <class T>
one __test(T&, typename enable_if<!is_reference<T>::value, void*>::type = 0);
template <class T>
two __test(T&&, typename enable_if<!is_reference<T>::value, void*>::type = 0);

typedef int(fun_type)(int);

#endif 
