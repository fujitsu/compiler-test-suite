
static union {
#ifndef __WORD64
  int a1;
#else
  __int32 a1;
#endif
  unsigned char b1[4];
};
static union {
#ifndef __WORD64
  int ax1;
#else
  __int32 ax1;
#endif
  unsigned char bx1[4];
};

namespace A {
  static union {
#ifndef __WORD64
    int a2;
#else
    __int32 a2;
#endif
    unsigned char b2[4];
  };
  static union {
#ifndef __WORD64
    int ax2;
#else
    __int32 ax2;
#endif
    unsigned char bx2[4];
  };
}

namespace {
  static union {
#ifndef __WORD64
    int a3;
#else
    __int32 a3;
#endif
    unsigned char b3[4];
  };
  static union {
#ifndef __WORD64
    int ax3;
#else
    __int32 ax3;
#endif
    unsigned char bx3[4];
  };
}

class C {
public:
  union {
#ifndef __WORD64
    int a5;
#else
    __int32 a5;
#endif
    unsigned char b5[4];
  };
  union {
#ifndef __WORD64
    int ax5;
#else
    __int32 ax5;
#endif
    unsigned char bx5[4];
  };
  class B {
  public:
    union {
#ifndef __WORD64
      int a6;
#else
      __int32 a6;
#endif
      unsigned char b6[4];
    };
    union {
#ifndef __WORD64
      int ax6;
#else
      __int32 ax6;
#endif
      unsigned char bx6[4];
    };
  }bobj;
}cobj;

using namespace A;

void f(int p1,int p2,int p3,int p4,int p5,int p6,int p7,int p8,int p9,int p10,int p11){}

#include <stdio.h>
int main(){
  union {
#ifndef __WORD64
    int a4;
#else
    __int32 a4;
#endif
    unsigned char b4[4];
  };
  union {
#ifndef __WORD64
    int ax4;
#else
    __int32 ax4;
#endif
    unsigned char bx4[4];
  };
  class LC {
  public:
    union {
#ifndef __WORD64
      int a8;
#else
      __int32 a8;
#endif
      unsigned char b8[4];
    };
    union {
#ifndef __WORD64
      int ax8;
#else
      __int32 ax8;
#endif
      unsigned char bx8[4];
    };
    class B {
    public:
      union {
#ifndef __WORD64
	int a10;
#else
	__int32 a10;
#endif
	unsigned char b10[4];
      };
      union {
#ifndef __WORD64
	int ax10;
#else
	__int32 ax10;
#endif
	unsigned char bx10[4];
      };
    }lbobj;
  }lobj;
  a4=ax4=lobj.a8=lobj.ax8=lobj.lbobj.a10=lobj.lbobj.ax10=0;
#if defined(__linux) || defined (__ASPC__) || defined (__FreeBSD__)
    
    
  b1[0]=1;
  bx1[0]=10;
  b2[0]=2;
  bx2[0]=20;
  b3[0]=3;
  bx3[0]=30;
  b4[0]=4;
  bx4[0]=40;
  cobj.b5[0]=5;
  cobj.bx5[0]=50;
  cobj.bobj.b6[0]=6;
  cobj.bobj.bx6[0]=60;
  lobj.b8[0]=8;
  lobj.bx8[0]=80;
  lobj.lbobj.b10[0]=10;
  lobj.lbobj.bx10[0]=100;
#else
  b1[3]=1;
  bx1[3]=10;
  b2[3]=2;
  bx2[3]=20;
  b3[3]=3;
  bx3[3]=30;
  b4[3]=4;
  bx4[3]=40;
  cobj.b5[3]=5;
  cobj.bx5[3]=50;
  cobj.bobj.b6[3]=6;
  cobj.bobj.bx6[3]=60;
  lobj.b8[3]=8;
  lobj.bx8[3]=80;
  lobj.lbobj.b10[3]=10;
  lobj.lbobj.bx10[3]=100;
#endif
  {
    union {
#ifndef __WORD64
      int a7;
#else
      __int32 a7;
#endif
      unsigned char b7[4];
    };
    union {
#ifndef __WORD64
      int ax7;
#else
      __int32 ax7;
#endif
      unsigned char bx7[4];
    };
    class LLC {
    public:
      union {
#ifndef __WORD64
	int a9;
#else
	__int32 a9;
#endif
        unsigned char b9[4];
      };
      union {
#ifndef __WORD64
	int ax9;
#else
	__int32 ax9;
#endif
        unsigned char bx9[4];
      };
      class B {
      public:
	union {
#ifndef __WORD64
	  int a11;
#else
	  __int32 a11;
#endif
	  unsigned char b11[4];
	};
	union {
#ifndef __WORD64
	  int ax11;
#else
	  __int32 ax11;
#endif
	  unsigned char bx11[4];
	};
      }llbobj;
    }llobj;

    a7=ax7=llobj.a9=llobj.ax9=llobj.llbobj.a11=llobj.llbobj.ax11=0;
#if  defined(__linux) || defined(__ASPC__) || defined (__FreeBSD__)
    b7[0]=7;
    bx7[0]=70;
    llobj.b9[0]=9;
    llobj.bx9[0]=90;
    llobj.llbobj.b11[0]=11;
    llobj.llbobj.bx11[0]=110;
#else
    b7[3]=7;
    bx7[3]=70;
    llobj.b9[3]=9;
    llobj.bx9[3]=90;
    llobj.llbobj.b11[3]=11;
    llobj.llbobj.bx11[3]=110;
#endif

    f( a1, a2, a3, a4,cobj.a5, cobj.bobj.a6, a7, lobj.a8, llobj.a9, lobj.lbobj.a10, llobj.llbobj.a11);
    f(ax1,ax2,ax3,ax4,cobj.ax5,cobj.bobj.ax6,ax7,lobj.ax8,llobj.ax9,lobj.lbobj.ax10,llobj.llbobj.ax11);
  }

  puts("ok");
}

