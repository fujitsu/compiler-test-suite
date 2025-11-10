
template <class T>
class A {};

extern template class A<int>;


template <class T>
void f(){}

extern template void f<int>();


class B
{
public:
    template <class T>
    void f(){}
};

extern template void B::f<int>();


class C
{
public:
    template <class T>
    class inner{};
};

extern template class C::inner<int>;


template <class T>
class D
{
public:
    void f(){}
};

extern template void D<int>::f();


template <class T>
class E
{
public:
    class inner {};
};

extern template class E<int>::inner;


template <class T>
class F
{
public:
    static int data;
};

template <class T>
int F<T>::data = 0;

extern template int F<int>::data;

template class A<int>;
template void f<int>();
template void B::f<int>();
template class C::inner<int>;
template void D<int>::f();
template class E<int>::inner;
template int F<int>::data;
