typedef int A;
typedef int ** B;
typedef char & C;



class DUMMY {};

typedef DUMMY D;
typedef DUMMY & E;
typedef DUMMY ** F;

#include <stdio.h>
int main(){
  puts("ok");
}
