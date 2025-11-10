




class C;
typedef C Ct;

class X1 {
  friend C;
};

class X2 {
  friend Ct;
  
  friend class D;
};

template <typename T> class R {
  friend T;
};

int main()
{
}
