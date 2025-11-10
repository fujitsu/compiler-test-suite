#ifndef __CPP11_TEST_HEADER_TYPE_TRAITS_H__
#define __CPP11_TEST_HEADER_TYPE_TRAITS_H__

# include "003.h"

#ifdef _HAS_CXX11_HEADER_TYPE_TRAITS

# include <type_traits>

#else 

template <bool _Bp, class _If, class _Then>
    struct conditional {typedef _If type;};
template <class _If, class _Then>
    struct conditional<false, _If, _Then> {typedef _Then type;};

template <bool, class _Tp = void> struct enable_if {};
template <class _Tp> struct enable_if<true, _Tp> {typedef _Tp type;};

template <class _Tp, _Tp __v>
struct integral_constant
{
    static const _Tp value = __v;
};

template <class _Tp, _Tp __v>
const _Tp integral_constant<_Tp, __v>::value;

typedef integral_constant<bool, true>  true_type;
typedef integral_constant<bool, false> false_type;


template <class _Tp> struct is_const            : public false_type {};
template <class _Tp> struct is_const<_Tp const> : public true_type {};


template <class _Tp> struct is_volatile               : public false_type {};
template <class _Tp> struct is_volatile<_Tp volatile> : public true_type {};


template <class _Tp> struct remove_const            {typedef _Tp type;};
template <class _Tp> struct remove_const<const _Tp> {typedef _Tp type;};


template <class _Tp> struct remove_volatile               {typedef _Tp type;};
template <class _Tp> struct remove_volatile<volatile _Tp> {typedef _Tp type;};


template <class _Tp> struct remove_cv
{typedef typename remove_volatile<typename remove_const<_Tp>::type>::type type;};


template <class _Tp>            struct __is_member_pointer             : public false_type {};
template <class _Tp, class _Up> struct __is_member_pointer<_Tp _Up::*> : public true_type {};
template <class _Tp> struct is_member_pointer : public __is_member_pointer<typename remove_cv<_Tp>::type> {};


template <class _Tp> struct is_lvalue_reference       : public false_type {};
template <class _Tp> struct is_lvalue_reference<_Tp&> : public true_type {};


#ifdef _HAS_CXX11_RVALUE_REFERENCE
template <class _Tp> struct is_rvalue_reference        : public false_type {};
template <class _Tp> struct is_rvalue_reference<_Tp&&> : public true_type {};
#endif


template <class _Tp> struct is_reference        : public false_type {};
template <class _Tp> struct is_reference<_Tp&>  : public true_type {};
#ifdef _HAS_CXX11_RVALUE_REFERENCE
template <class _Tp> struct is_reference<_Tp&&> : public true_type {};
#endif


template <class _Tp> struct add_lvalue_reference                      {typedef _Tp& type;};

template <>          struct add_lvalue_reference<void>                {typedef void type;};
template <>          struct add_lvalue_reference<const void>          {typedef const void type;};
template <>          struct add_lvalue_reference<volatile void>       {typedef volatile void type;};
template <>          struct add_lvalue_reference<const volatile void> {typedef const volatile void type;};


#ifdef _HAS_CXX11_RVALUE_REFERENCE
template <class _Tp> struct add_rvalue_reference                      {typedef _Tp&& type;};
template <>          struct add_rvalue_reference<void>                {typedef void type;};
template <>          struct add_rvalue_reference<const void>          {typedef const void type;};
template <>          struct add_rvalue_reference<volatile void>       {typedef volatile void type;};
template <>          struct add_rvalue_reference<const volatile void> {typedef const volatile void type;};
#endif


template <class _Tp> struct remove_reference        {typedef _Tp type;};
template <class _Tp> struct remove_reference<_Tp&>  {typedef _Tp type;};
#ifdef _HAS_CXX11_RVALUE_REFERENCE
template <class _Tp> struct remove_reference<_Tp&&> {typedef _Tp type;};
#endif


template <class _Tp> struct __is_pointer       : public false_type {};
template <class _Tp> struct __is_pointer<_Tp*> : public true_type {};
template <class _Tp> struct is_pointer : public __is_pointer<typename remove_cv<_Tp>::type> {};


template <class _Tp> struct remove_pointer                      {typedef _Tp type;};
template <class _Tp> struct remove_pointer<_Tp*>                {typedef _Tp type;};
template <class _Tp> struct remove_pointer<_Tp* const>          {typedef _Tp type;};
template <class _Tp> struct remove_pointer<_Tp* volatile>       {typedef _Tp type;};
template <class _Tp> struct remove_pointer<_Tp* const volatile> {typedef _Tp type;};


template <class _Tp> struct add_pointer
    {typedef typename remove_reference<_Tp>::type* type;};


#ifdef _HAS_CXX11_RVALUE_REFERENCE
template <class _Tp>
typename add_rvalue_reference<_Tp>::type
declval();
#else
template <class _Tp>
typename add_lvalue_reference<_Tp>::type
declval();
#endif


template <class _Tp, class _Up> struct is_same           : public false_type {};
template <class _Tp>            struct is_same<_Tp, _Tp> : public true_type {};


#ifdef _HAS_FEATURE_IS_CLASS

template <class _Tp> struct is_class
    : public integral_constant<bool, __is_class(_Tp)> {};

#else 

namespace __is_class_imp
{
    template <class _Tp> char  __test(int _Tp::*);
    template <class _Tp> char (&__test(...))[2];
}

template <class _Tp> struct is_class
    : public integral_constant<bool, sizeof(__is_class_imp::__test<_Tp>(0)) == 1 > {};

#endif 


#ifdef _HAS_FEATURE_IS_BASE_OF

template <class _Bp, class _Dp>
struct is_base_of
    : public integral_constant<bool, __is_base_of(_Bp, _Dp)> {};

#else  

namespace __is_base_of_imp
{
    template <class _Tp>
    struct _Dst
    {
        _Dst(const volatile _Tp &);
    };
    template <class _Tp>
    struct _Src
    {
        operator const volatile _Tp &();
        template <class _Up> operator const _Dst<_Up> &();
    };
    template <size_t> struct __one { typedef char type; };
    struct __two { char __[2]; };
    template <class _Bp, class _Dp> typename __one<sizeof(_Dst<_Bp>(declval<_Src<_Dp> >()))>::type __test(int);
    template <class _Bp, class _Dp> __two __test(...);
}

template <class _Bp, class _Dp>
struct is_base_of
    : public integral_constant<bool, is_class<_Bp>::value &&
                                     sizeof(__is_base_of_imp::__test<_Bp, _Dp>(0)) == 2> {};

#endif 

#endif 

#endif 
