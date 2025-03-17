

int res;
#include <stdio.h>
int main() {
  int a;
  a=0;
  {
    int b;
    b=0;
    {
      class C {
      public:
	int a,b,c;
	int f1() {
	  int x;
	  x = a+b+c;
	  x += ccobj.f1();
	  return x;
	}
	int f2() {
	  int x; x = a+b+c; x += ccobj.f2(); return x;
	}
	C():a(1),b(2),c(3){}
	class CC {
	public:
	  int a,b,c;
	  int f1() {
	    int x;
	    x = a+b+c;
	    x += cccobj.f1();
	    return x;
	  }
	  int f2() {
	    int x; x = a+b+c; x += cccobj.f2(); return x;
	  }
	  CC():a(1),b(2),c(3){}
	  class CCC {
	  public:
	    int a,b,c;
	    int f1() {
	      int x;
	      x =  a+b+c;
	      x += a+b+c;
	      return x;
	    }
	    int f2() {
	      int x; x = a+b+c; x += a+b+c; return x;
	    }
	    CCC():a(1),b(2),c(3){}
	  };
	  CCC cccobj;
	};
	CC ccobj;
      };
      struct S {
	int a,b,c;
	int f1() {
	  int x;
	  x = a+b+c;
	  x += ssobj.f1();
	  return x;
	}
	int f2() {
	  int x; x = a+b+c; x += ssobj.f2(); return x;
	}
	S():a(1),b(2),c(3){}
	struct SS {
	  int a,b,c;
	  int f1() {
	    int x;
	    x = a+b+c;
	    x += sssobj.f1();
	    return x;
	  }
	  int f2() {
	    int x; x = a+b+c; x += sssobj.f2(); return x;
	  }
	  SS():a(1),b(2),c(3){}
	  struct SSS {
	    int a,b,c;
	    int f1() {
	      int x;
	      x =  a+b+c;
	      x += a+b+c;
	      return x;
	    }
	    int f2() {
	      int x; x = a+b+c; x += a+b+c; return x;
	    }
	    SSS():a(1),b(2),c(3){}
	  };
	  SSS sssobj;
	};
	SS ssobj;
      };
      union U {
	int a;
	short b[2];
	char c[4];
	int f1() {
	  int x;
	  x = a+b[1]+c[3];
	  x += uuobj.f1();
	  return x;
	}
	int f2() {
	  int x; x = a+b[1]+c[3]; x += uuobj.f2(); return x;
	}
	U():a(2){}
	union UU {
	  int a;
	  short b[2];
	  char c[4];
	  int f1() {
	    int x;
	    x = a+b[1]+c[3];
	    x += uuuobj.f1();
	    return x;
	  }
	  int f2() {
	    int x; x = a+b[1]+c[3]; x += uuuobj.f2(); return x;
	  }
	  union UUU {
	    int a;
	    short b[2];
	    char c[4];
	    int f1() {
	      int x;
	      x = a+b[1]+c[3];
	      x += a+b[1]+c[3];
	      return x;
	    }
	    int f2() {
	      int x; x = a+b[1]+c[3]; x += a+b[1]+c[3]; return x;
	    }
	  };
	  UUU uuuobj;
	};
	UU uuobj;
      };
      C cobj;
      S sobj;
      U uobj;
      res = a+b;
      res += cobj.f1();
      res += cobj.f2();
      res += sobj.f1();
      res += sobj.f2();
      res += uobj.f1();
      res += uobj.f2();
    }
  }

  puts("ok");
}
