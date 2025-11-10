extern "C" int puts(const char*);

struct X {
    X& operator=(const X& x)
    {
      return *this;
    }
};


int main()
{
  X x;

  X() = x;
  
}
