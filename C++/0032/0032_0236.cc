
#include <iostream>
using namespace std;

#include <stdlib.h>
class A {
 public:
  virtual int func(){ return 1; }
}aa;
struct  B : public A {
  struct A {
   virtual int func(){ return 2; }
  }ba;
}bb;

class C: public A ,public  B::A{
 public:
  virtual int func() { return 3; }
}cc;

class Z {
 public:
  virtual int func(){ return 4; }
}zz;

class Y {
 public:
  class Z {
  public:
    virtual int func(){ return 5; }
  }yz;
  virtual int func(){ return 6; }
}yy;

class X {
 public:
  class Y {
   public:
    class Z {
    public:
      virtual int func(){ return 7; }
    }xyz;
    virtual int func(){ return 8; }
  }xy;
  virtual int func(){ return 9; }
}xx;

class Q : public X, public X::Y, public X::Y::Z {
 public:
  virtual int func() { return 10; }
}qq;
int main()
{
  A       *ap;
  B::A    *bap;
  X       *xp;
  X::Y    *xyp;
  X::Y::Z *xyzp;

  if (aa.func() == 1)             
    if (bb.ba.func() == 2)          
      if (cc.B::A::func() == 2)       
	if (zz.func() == 4)             
	  if (yy.func() == 6)             
	    if (yy.yz.func() == 5)          
	      if (xx.func() == 9)             
		if (xx.xy.func() == 8)          
		  if (xx.xy.xyz.func() == 7)      
		    {
		      ap = &cc;
		      if (ap -> func() == 3)          
		       {
			 bap = &cc;
			 if (bap -> func() == 3)         
			  {
			    xp = &qq;
			    if (xp -> func() == 10)          
			     {
			       xyp = &qq;             
			       if (xyp -> func() == 10)      
				{
				  xyzp = &qq;
				  if (xyzp -> func() == 10)  
				   {
				     xyzp = &xx.xy.xyz;
				     if (xyzp -> func() == 7) 
				       {
					 cout << "ok\n";
					 exit(0);
				       }
				     else
				       cout << "ng1\n";
				   }
				  else
				    cout << "ng2\n";
				}
			       else
				 cout << "ng3\n";
			     }
			    else
			      cout << "ng4\n";
			  }
			 else
			   cout << "ng5\n";
		       }
		      else
			cout << "ng6\n";
		    }
		  else
		    cout << "ng7\n";
		else
		  cout << "ng8\n";
	      else
		cout << "ng9\n";
	    else
	      cout << "ng10\n";
	  else
	    cout << "ng11\n";
	else
	  cout << "ng12\n";
      else
	cout << "ng13\n";
    else
      cout << "ng14\n";
  else
    cout << "ng15\n";
}
  



