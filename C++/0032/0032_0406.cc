#include <exception>
using namespace std;
#include <stdio.h>
#include <unistd.h>

struct S {
	S(){ }
        S(S&) { throw 1.3;}
} s;

void eh_term(void)
{
	try {
		throw ;
	}
	catch (char) {
		printf ( "(char) catch\n");
	}
	catch (...) {
		printf ( "Unexpected ... catch.\n");
	}

        _exit( 1 );
}

 
int main(void)
{
  set_terminate(eh_term);

#if 1
  try {
    throw 'a';
  }
  catch (char) {
    try {
      throw s; 
    }
    catch (S) {
    }
  }
#else
  try {
    throw s; 
  }
  catch (S) {
  }

#endif
}
