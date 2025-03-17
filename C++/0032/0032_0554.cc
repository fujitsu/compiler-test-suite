extern "C"  int memcmp(const void *, const void *, unsigned int);
#include <stdio.h>
int main(){
 char* p ="abcd";
 int i=10;int j=1;int x;
 i = j+10;
 x=memcmp(p,"abcd",sizeof("abcd"));
 i = j+10 ;

 puts("ok");
}
