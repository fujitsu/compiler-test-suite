extern "C" void printf(char*,...);
class D *p;

class C {
 public: 
  int c; 
  C(){ c = 5;}
  operator D();       
}y;
class D : public C{
 public: 
  int d;
  D() { }
}x;

C::operator D(){
  this->c += 10;
  if (this->c == 15)
    {
      x.c = this->c + 5;
      return x;
    }
  else
    {
      printf("ng \n");
      return *((D*)this);
    }
}
int main()
{
  D dobj;
  C cobj;
  dobj = cobj;
  if (dobj.c == 20 && cobj.c == 15)
    printf("ok\n");
  else
    printf("ng dobj.c=%d cobj.c=%d \n", dobj.c, cobj.c);
  
}




