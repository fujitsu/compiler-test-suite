






#include <stdio.h>

class B {
 public:
  int b;
  B(){ b = 1; }
  class BB {
  public:
    int bb;
    BB(){ bb = 1; }
  }bbobj;
};
int main()
{
  B bobj;
  B *bp = &bobj;
  B::BB bbobj;
  B::BB *bbp = &bbobj;
  void *vp;

  vp = (B::BB*)bp;
  if (vp == (void*)&bobj)
    {
      vp = (B*)bbp;
      if (vp == (void*)&bbobj)
	printf("ok\n");
      else
	printf("ng2\n");
    }
  else
    printf("ng1\n");
}
