namespace ns_test
{
    template <class T>
    class A {};

    template <class T>
    void f(){}

    class B
    {
    public:
        template <class T>
        void f(){}
    };

    class C
    {
    public:
        template <class T>
        class inner{};
    };

    template <class T>
    class D
    {
    public:
        void f(){}
    };

    template <class T>
    class E
    {
    public:
        class inner {};
    };


    template <class T>
    class F
    {
    public:
        static int data;
    };

    template <class T>
    int F<T>::data = 0;
}

extern template class ns_test::A<int>;
extern template void ns_test::f<int>();
extern template void ns_test::B::f<int>();
extern template class ns_test::C::inner<int>;
extern template void ns_test::D<int>::f();
extern template class ns_test::E<int>::inner;
extern template int ns_test::F<int>::data;

#if !defined(_CXX11_TEST_LINK_TIME_INSTANTIATION)
template class ns_test::A<int>;
template void ns_test::f<int>();
template void ns_test::B::f<int>();
template class ns_test::C::inner<int>;
template void ns_test::D<int>::f();
template class ns_test::E<int>::inner;
template int ns_test::F<int>::data;
#endif
