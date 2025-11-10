
template<class T> class Array {  };
template<class T> void sort(Array<T>& v) {  }

extern template void sort<>(Array<int>&);
extern template void sort(Array<char>&);

class X
{
public:
    template<class T>
    void sort(Array<T>& v) {  }
};

extern template void X::sort<>(Array<int>&);
extern template void X::sort(Array<char>&);

#if !defined(_CXX11_TEST_LINK_TIME_INSTANTIATION)
template void sort<>(Array<int>&);
template void sort(Array<char>&);
template void X::sort<>(Array<int>&);
template void X::sort(Array<char>&);
#endif
