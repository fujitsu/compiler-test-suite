extern "C" int puts(const char*);

struct TrivialMoveCtor1 {};
struct TrivialMoveCtor2 
{
    TrivialMoveCtor2() = default; 
    TrivialMoveCtor2(TrivialMoveCtor2&&) = default;
};
struct TrivialMoveCtor3
{
    TrivialMoveCtor3() {} 
    TrivialMoveCtor3(TrivialMoveCtor3&&) = default; 
};
struct TrivialMoveCtor4 : public TrivialMoveCtor1 {};
struct TrivialMoveCtor5 { TrivialMoveCtor1 member; };

struct A
{
    A(A const &) = delete;
    A(A &&) = delete;
    A& operator = (A const &) = delete;
    A& operator = (A &&) = delete;
    int x;
};

struct B
{
    B(B const &) = default;
    B(B &&) = default;
    B& operator = (B const &) = default;
    B& operator = (B &&) = default;
    int x;
};

int main()
{
  if (__is_trivially_copyable(int))
    puts("int: trivially_copyable");
  else
    puts("int: not trivially_copyable");

  if (__is_trivial(int))
    puts("int: trivial");
  else
    puts("int: not trivial");

  if (__is_trivially_copyable(TrivialMoveCtor1))
    puts("TrivialMoveCtor1: trivially_copyable");
  else
    puts("TrivialMoveCtor1: not trivially_copyable");

  if (__is_trivial(TrivialMoveCtor1))
    puts("TrivialMoveCtor1: trivial");
  else
    puts("TrivialMoveCtor1: not trivial");

  if (__is_trivially_copyable(TrivialMoveCtor2))
    puts("TrivialMoveCtor2: trivially_copyable");
  else
    puts("TrivialMoveCtor2: not trivially_copyable");

  if (__is_trivial(TrivialMoveCtor2))
    puts("TrivialMoveCtor2: trivial");
  else
    puts("TrivialMoveCtor2: not trivial");

  if (__is_trivially_copyable(A))
    puts("A: trivially_copyable");
  else
    puts("A: not trivially_copyable");

  if (__is_trivial(A))
    puts("A: trivial");
  else
    puts("A: not trivial");

  if (__is_trivially_copyable(B))
    puts("B: trivially_copyable");
  else
    puts("B: not trivially_copyable");

  if (__is_trivial(B))
    puts("B: trivial");
  else
    puts("B: not trivial");
}
