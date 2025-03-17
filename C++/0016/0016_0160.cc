int dummy;


template<class T , class TT> class T1A {
public:
  T x;
  TT yy;
  template<class T2, int i> class T1A_N1 {
    T2  aa;
  public:
    TT bb[i];
    template<class T3, int ii> class T1A_N2 {
    public:
      T cc;
      T3 dd[ii][i]; 
    };
  };
}; 

void f1(){
  T1A<int ,short> x;
  T1A<char,char>::T1A_N1<int,10> y;
  T1A<float,double>::T1A_N1<char,100>::T1A_N2<int,10> z; 
  dummy= sizeof(x)+sizeof(y)+sizeof(z);
}

  
class T2A {
public:
  int t2a_mem;
  template<class T1, int i, class T2> class T2A_N1 {
    T1 t2a_n1_mema[i];
  public:
    template<class T3> class T2A_N2 {
    protected:
      T3 t2a_n2_mem[i];
    };
    T2 t2a_n1b_mem;
  };
  class  T2A_N1b {
  public:
    template<class T1, int i, class T2> class T2A_N2b {
      T1 t2a_n2b_mem[i];
    public:
      template<class T3> class T2A_N3b {
      protected:
        T3 t2a_n3b_mem[i];
      };
    };
  };
};

void f2(){
 T2A::T2A_N1<int,10,char> x;
 T2A::T2A_N1<short,2,int>::T2A_N2<float> y;
 T2A::T2A_N1b::T2A_N2b<int, 100, float> z;
 T2A::T2A_N1b::T2A_N2b<short,1, int>::T2A_N3b<unsigned char> w;
 dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w);
}


template<class T1, class T2> class T3A {
private:
  T1  t3a_mema;
  T2  (*t3a_memb)[2];
public:
  class T3A_N2 {
  private:
    T1  t3a_n2_mema;
  public:
    class T3A_N3 {
    public:
      T2  t3a_n3_mema;
    };
  };
  template<class T3, int i> class T3A_N1b {
  public:
    T1 t3a_n1b_mem[i];
    class T3A_N2b {
    private:
      T3  t3a_n2b_mema;
    public:
      class T3A_N3b {
      public:
        T2  t3a_n3b_mema;
      };
    };
  };
};

void f3(){
  T3A<int,char>::T3A_N2 x;
  T3A<short,int>::T3A_N2::T3A_N3 y;
  T3A<float,short>::T3A_N1b<int,10>::T3A_N2b z;
  T3A<char,int>::T3A_N1b<short,1>::T3A_N2b::T3A_N3b w;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w);
}


template<class T1, int i> class T4A {
public:
  class T4A_N1 {
  public:
    template<class T2, class T3> class T4A_N2 {
      T2 t4a_n2_mem;
    public: 
      template<class T4> class T4A_N3 {
      public:
        T4 *t4a_n3;
      };
    };
    class T4A_N2b {
    public: 
      char *t3a_n2b_mem;
      template<class T5, class T6> class T4A_N3b {
        int t4a_n3b_mem;
      public:
        template<class T7> class T4A_N4b {
        public:
          int t4a_n4b_mem;
        };
      };
    };
  };
};

void f4(){
  T4A<short,10>::T4A_N1::T4A_N2<int ,int> x;
  T4A<float,20>::T4A_N1::T4A_N2<int,char>::T4A_N3<short> y;
  T4A<short,30>::T4A_N1::T4A_N2b::T4A_N3b<int ,int> z;
  T4A<char,40>::T4A_N1::T4A_N2b::T4A_N3b<int ,char>::T4A_N4b<short> w;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w);
}


class T5A {
public:
  template<class T1, int i> class T5A_N1 {
  public:
    class T5A_N2 {
    public:
      int t5a_n2_mem; 
      class T5A_N3 {
      public:
        int t5a_n3_mem; 
      };
    }; 
    template<class T2,class T3> class T5A_N2b {
    public:
      class T5A_N3b {
        T2 t5a_n3b_mem;
      public:
        class T5A_N4b {
           T3 t5a_n4b_mem;
        };
      };
    };
  };
  class T5A_N1b {
  public:
    template<class T4> class T5A_N2b {
    public:
      class T5A_N3b {
        T4 t5a_n3b_mem;
      };
    };
  };
};

void f5(){
  T5A::T5A_N1<int,1>::T5A_N2 x;
  T5A::T5A_N1<char,2>::T5A_N2::T5A_N3 y;
  T5A::T5A_N1<unsigned int, 3>::T5A_N2b<char,char>::T5A_N3b z;
  T5A::T5A_N1<float, 4>::T5A_N2b<int,short>::T5A_N3b::T5A_N4b w;
  T5A::T5A_N1b::T5A_N2b<int>::T5A_N3b v;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w)+sizeof(v);
}


template<class T , class TT> class T6A {
public:
  T x;
  TT yy;
  template<class T2, int i> class T6A_N1 {
    T2  aa;
  public:
    typedef TT TD_A[i];
  };
}; 

class T6B {
public:
  int t2a_mem;
  template<class T1, int i, class T2> class T6B_N1 {
    T1 t2a_n1_mema[i];
  public:
    typedef T2 TD_B;
    template<class T3> class T6B_N2 {
    public:
      typedef T3 *TD_C;
    };
    T2 t2a_n1b_mem;
  };
  class  T6B_N1b {
  public:
    template<class T1, int i, class T2> class T6B_N2b {
    public:
      typedef T1 TD_D[i];
    };
  };
};

template<class T1, class T2> class T6C {
public:
  class T6C_N2 {
  private:
    T1  t3a_n2_mema;
  public:
    typedef T1 TD_E;
    class T6C_N3 {
    public:
      typedef T2  TD_F;
    };
  };
  template<class T3, int i> class T6C_N1b {
  public:
    class T6C_N2b {
    public:
      typedef T3  TD_G[i];
    };
  };
};

template<class T1, int i> class T6D {
public:
  class T6D_N1 {
  public:
    template<class T2, class T3> class T6D_N2 {
    public:
      typedef T2 TD_H[i];
    };
  };
};

class T6E {
public:
  template<class T1, int i> class T6E_N1 {
  public:
    class T6E_N2 {
    public:
      typedef T1 (*TD_I)[i];
    }; 
  };
};

void f6(){
  T6A<int, char>::T6A_N1<short,10>::TD_A x;
  T6B::T6B_N1<int,10,short>::TD_B y;
  T6B::T6B_N1<char,20,float>::T6B_N2<int>::TD_C z;
  T6B::T6B_N1b::T6B_N2b<char,1,short>::TD_D w;
  T6C<int,char>::T6C_N2::TD_E v;
  T6C<short,int>::T6C_N2::T6C_N3::TD_F u;
  T6C<float,double>::T6C_N1b<int,20>::T6C_N2b::TD_G t;
  T6D<int,10>::T6D_N1::T6D_N2<short,char>::TD_H s;
  T6E::T6E_N1<char,1>::T6E_N2::TD_I r;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w)+sizeof(v)+sizeof(u)
         +sizeof(t)+sizeof(s)+sizeof(r);
}


namespace T7A {
  template<class T , class TT> class T7A_N1 {
  public:
    T x;
    TT yy;
    template<class T2, int i> class T7A_N2 {
      T2  aa;
    public:
     typedef TT TD_A[i];
    };
  }; 
 
  class T7A_N1a {
  public:
    int t7a_n1a_mem;
    template<class T1, int i, class T2> class T7A_N2a {
      T1 t7a_n2a_mem[i];
    public:
      typedef T2 TD_B;
      template<class T3> class T7A_N3a {
      public:
        typedef T3 *TD_C;
      };
      T2 t7a_n2a_mema;
    };
    class  T7A_N2b {
    public:
      template<class T1, int i, class T2> class T7A_N3b {
      public:
	typedef T1 TD_D[i];
      };
    };
  };
}
namespace T7B {
  namespace T7C {
    template<class T1, class T2> class T7C_N1 {
    public:
      class T7C_N2 {
      private:
        T1  t7a_n2_mem;
      public:
        typedef T1 TD_E;
        class T7C_N3 {
        public:
          typedef T2  TD_F;
        };
      };
      template<class T3, int i> class T7C_N2b {
      public:
        class T7C_N3b {
        public:
          typedef T3  TD_G[i];
        };
      };
    };
    template<class T1, int i> class T7C_N1b {
    public:
      class T7C_N2b {
      public:
	template<class T2, class T3> class T7C_N3b {
	public:
	  typedef T2 TD_H[i];
	};
      };
    };

    class T7C_N1c {
    public:
      template<class T1, int i> class T7C_N2c {
      public:
	class T7C_N3c {
	public:
	  typedef T1 (*TD_I)[i];
	}; 
      };
    };
  }
}

using namespace T7A;
using namespace T7B;
using namespace T7C;

void f7(){
  T7A_N1<int, char>::T7A_N2<short,10>::TD_A x;
  T7A_N1a::T7A_N2a<int,10,short>::TD_B y;
  T7A_N1a::T7A_N2a<char,20,float>::T7A_N3a<int>::TD_C z;
  T7A_N1a::T7A_N2b::T7A_N3b<int,1,char>::TD_D w;
  T7C_N1<int,char>::T7C_N2::TD_E v;
  T7C_N1<short,int>::T7C_N2::T7C_N3::TD_F u;
  T7C_N1<float,double>::T7C_N2b<int,20>::T7C_N3b::TD_G t;
  T7C_N1b<int,10>::T7C_N2b::T7C_N3b<int,char>::TD_H s;
  T7C_N1c::T7C_N2c<int,10>::T7C_N3c::TD_I r;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w)+sizeof(v)+sizeof(u)
         +sizeof(t)+sizeof(s)+sizeof(r);
}





template<class T, int i> class T9A {
public: 
  T * t9a_mem;
  T (* t9a_mema)[i];
  template<class T2, class T3> class T9A_N1 {
  public:
    T t9a_n1_mema;
    T2 t9a_n1_mmemb;
    T3 (*t9a_n1_memc)[i][i];
  };
};

void f9(){
  T9A<int,10> x;
  T9A<int ,20> y;
  T9A<char,10> z;
  T9A<int,10>::T9A_N1<char,short> w;
  T9A<int,10>::T9A_N1<int ,int> v;
  dummy= sizeof(x)+sizeof(y)+sizeof(z)+sizeof(w)+sizeof(v);
}

#include <stdio.h>
int main(){
 f1();
 f2();
 f3();
 f4();
 f5();
 f6();
 f7();
 f9();
 puts("ok");
 return 0; 
}
