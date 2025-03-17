

extern "C" void printf(char*,...);


class AA {}a;
class BB {
 public:
  class AA a;
  class AA *p;
}bb;

class Z{};
class Y {
 public:
  class Z yz;
}yy;
class X {
 public:
  class Y {
  public:
   class Z xyz;
  }xy;
}xx;
   

int main()
{
  BB      *bbp = &bb; 
  X       *xp = &xx;
  X::Y    *xyp= &xx.xy;

  if (&bbp->a==&bb.a && &xyp->xyz == &xx.xy.xyz)
     printf("ok\n");
  else
     printf("ng\n");
  return 0;
}
