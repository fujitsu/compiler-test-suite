template<class T>
class X {
public:
    enum class ID:T;
};

template<class T>
enum class X<T>::ID:T { i1, i2 };

template class X<int>;

extern "C" int printf(const char *, ...);
int main()
{
  printf("%d\n", X<int>::ID::i2);
}
