template<class T>
class X {
public:
  enum class ID:T;
  enum class ID:T { i1, i2 };
};

template class X<int>;

extern "C" int printf(const char *, ...);
int main()
{
  printf("%d\n", X<int>::ID::i2);
}
