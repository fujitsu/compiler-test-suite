struct X {};
struct Y {};

class Z
{
    typedef X type;
    Y data;
};


template <class T>
class A {};

extern template class A<Z::type>;
extern template class A<decltype(Z().data)>;
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template class A<Z::type>;
template class A<decltype(Z().data)>;
#endif


template <class T>
T* foo(T*) throw(T) { return 0; }

extern template Z::type* foo<Z::type>(Z::type*) throw(Z::type);
extern template decltype(Z().data)* foo<decltype(Z().data)>(decltype(Z().data)*) throw(decltype(Z().data));
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template Z::type* foo<Z::type>(Z::type*) throw(Z::type);
template decltype(Z().data)* foo<decltype(Z().data)>(decltype(Z().data)*) throw(decltype(Z().data));
#endif


class B
{
private:
    template <class T>
    T* foo(T*) throw(T){ return 0; }

    friend void test();
};

extern template Z::type* B::foo<Z::type>(Z::type*) throw(Z::type);
extern template decltype(Z().data)* B::foo<decltype(Z().data)>(decltype(Z().data)*) throw(decltype(Z().data));
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template Z::type* B::foo<Z::type>(Z::type*) throw(Z::type);
template decltype(Z().data)* B::foo<decltype(Z().data)>(decltype(Z().data)*) throw(decltype(Z().data));
#endif


class C
{
public:
    template <class T>
    class inner{};
};

extern template class C::inner<Z::type>;
extern template class C::inner<decltype(Z().data)>;
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template class C::inner<Z::type>;
template class C::inner<decltype(Z().data)>;
#endif


template <class T>
class D
{
private:
    T* foo(T*) throw(T) { return 0; }

    friend void test();
};

extern template Z::type* D<Z::type>::foo(Z::type*) throw(Z::type);
extern template decltype(Z().data)* D<decltype(Z().data)>::foo(decltype(Z().data)*) throw(decltype(Z().data));
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template Z::type* D<Z::type>::foo(Z::type*) throw(Z::type);
template decltype(Z().data)* D<decltype(Z().data)>::foo(decltype(Z().data)*) throw(decltype(Z().data));
#endif


template <class T>
class E
{
public:
    class inner {};
};

extern template class E<Z::type>::inner;
extern template class E<decltype(Z().data)>::inner;
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
extern template class E<Z::type>::inner;
extern template class E<decltype(Z().data)>::inner;
#endif


template <class T>
class F
{
public:
    static int data;
};

template <class T>
int F<T>::data = 0;

extern template int F<Z::type>::data;
extern template int F<decltype(Z().data)>::data;
#ifndef _CXX11_TEST_LINK_TIME_INSTANTIATION
template int F<Z::type>::data;
template int F<decltype(Z().data)>::data;
#endif
