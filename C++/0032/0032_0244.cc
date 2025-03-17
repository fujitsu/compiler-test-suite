

extern "C" void printf(char*,...);


class AA {}a;
class BB {
 public:
  class AA {
   public:
    int y;
  }aa;
}bb;

class A {};
class B {
 public:
  class A{
  public:
    int c;
    A(){c=20;}
  };
};

class Z{};
class Y {
 public:
  class Z {
  public:
  }yz;
}yy;
class X {
 public:
  class Y {
  public:
    class Z {
    public:
      int z;
    }xyz;
  }xy;
}xx;
   

int main()
{
  BB::AA    *bbaap; 
  B::A    *bap;
  B::A    bcobj;
  X       *xp = &xx;
  X::Y    *xyp= &xx.xy;
  X::Y::Z *xyzp=&xx.xy.xyz;

  bap= &bcobj;
  bbaap =&bb.aa;  
  bbaap->y=10;
  xyzp->z=30;

  if (bb.aa.y==10 && bap->c==20 && xyp->xyz.z==30 && xp->xy.xyz.z==30)
     printf("ok\n");
  else
     printf("ng\n");
  return 0;
}
