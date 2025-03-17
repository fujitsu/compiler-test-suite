#include <iostream>
using namespace std;

struct B { int bi; };
struct D : B { int di; 
	       operator int(){ return 0; }
	     };

int ignore1(void *)       { return 1; }
int ignore1(const void *) { return 0; }
int ignore2(char *)       { return 0; }
int ignore2(void *)       { return 1; }
int ignore3(char *)       { return 0; }
int ignore3(const void *) { return 1; }
int ignore4(B *)          { return 1; }
int ignore4(const void *) { return 0; }
int ignore5(B *)          { return 1; }
int ignore5(void *)       { return 0; }
int ignore6(int)          { return 0; }
int ignore6(void *)       { return 1; }
int ignore7(int)          { return 0; }
int ignore7(const void *) { return 1; }
int main()
	{
	D d;
	D &dr = d;
	if (ignore1(&dr))
	  if (ignore2(&dr))
	    if (ignore3(&dr))
	      if (ignore4(&dr))
		if (ignore5(&dr))
		  if (ignore6(&dr))
		    if (ignore7(&dr))
		      cout << "ok\n";
		    else
		      cout << "ng1\n";
		  else
		    cout << "ng2\n";
		else
		  cout << "ng3\n";
	      else
		cout << "ng4\n";
	    else
	      cout << "ng5\n";
	  else
	    cout << "ng6\n";

	return 0;
	}
