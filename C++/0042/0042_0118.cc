extern "C" int printf(const char*, ...);
class X {
  int x;
public:
  X() :x(0){};
  X& operator=(const X&arg) &
  {
    this->x = arg.x + 1;
    printf("this %p: this.x=%d\narg  %p:  arg.x=%d\n",
	   this, this->x, &arg, arg.x);
    return *this;
  }
};

int main()
{
  X x;
  
  
}
