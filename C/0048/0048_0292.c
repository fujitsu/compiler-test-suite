#include <stdio.h>
int func();
int main() {
    printf("***  *** STARTED\n");
    func();
    printf("***  *** ENDED\n");
}
int 
func (void) {
  void func1( int a );        
  int a=1;

  void func2( int b );        
  void b();

  void func3( int c );        
  struct c { int cc;};

  void func4( int d );        
  union  d { int dd;};

  void func5( int e );        
  enum   e {  y    };

  void func5( int f );        
  struct { int f;  } st;

  void func6( int g );        
  union  { int g;  } un;

  void func7( int h );        
  enum   {     h   };

  void func8( int i );        
  struct { int ii; } i;

  void func9( int j );        
  union  { int jj; } j;

  void func10( int k );       
  enum   {     kk  } k;

  void func11( int l );       
  l:;
}
