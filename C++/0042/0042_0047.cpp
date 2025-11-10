template <class T> struct A { ~A() = delete; };
template <class T> A<T> foo(T);

decltype(foo(123)) g();
decltype((1, foo(123))) h();

void test() {}

int main() {
    test();
}