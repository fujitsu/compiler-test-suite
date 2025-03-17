char			func11(char a1, char *a2){ return (char)0; }
short			func21(short a3, ...){ return (short)0; }
int			func31(...){ return (int)0; }
char			(&func1)(char, char*) = func11;
short			(&func2)(short, ...) = func21;
int			(&func3)(...) = func31;

#include <stdio.h>
int main(){
  puts("ok");
}
