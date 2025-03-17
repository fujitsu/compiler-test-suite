#include <stdio.h>

class DERIVED;

class BASE {
 public: 
  int b_mem; 
  BASE(){ b_mem = 5;}
  operator DERIVED();
}b_obj;

class DERIVED : public BASE{
 public: 
  int d_mem;
  DERIVED() { d_mem=1; }
  DERIVED(int i) { d_mem=i; }
};
DERIVED const        d_obj_c(5);

BASE::operator DERIVED(){
    this->b_mem += 10;
    if (this->b_mem == 15)
      {
	return d_obj_c;
      }
    else
      {
	printf("ng\n");
	return *((DERIVED*)this);
      }
}

void F011002();
int main()
{
  F011002();
}

void F011002()
{
  DERIVED const dobj_c;
  DERIVED       dobj(3), dobj_x;
  DERIVED       dobj_i=DERIVED(dobj);
  BASE bobj;

  dobj = bobj;
  dobj_x = dobj_c;

  if (dobj.d_mem == 5 && bobj.b_mem == 15 &&
      dobj_c.d_mem == 1 &&
      dobj_i.d_mem == 3,
      dobj_x.d_mem == 1)
    printf("ok\n");
  else
    printf("ng\n");
  
}
