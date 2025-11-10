class X {
public:
  enum class ID:int;
  enum class ID:int { i1, i2 };
};

extern "C" int printf(const char *, ...);
int main()
{
  printf("%d\n", X::ID::i2);
}
