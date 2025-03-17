#include <stdlib.h>
#include <string.h>

class C {
public:
  char *p;
  char *dup(char* s) {
    p = new char[strlen(s)];
    strcpy (p,s);
    return p;
  }
  char *dup2(char* s, int len) {
    p = (char*)malloc(len);
    memcpy (p,s,len);
    return p;
  }
};
  
void func(char *p) {
  char* c1 = new char[10];
  char* c2 = (char*)malloc(10);
  strcpy(c1,p);
  strcpy(c2,p);
}

C cobj;
#include <stdio.h>
int main(){
  char* p = new char[10];
  char* q = (char*)malloc(10);
  strcpy(p,"123456789");
  strcpy(q,p);
  func(p);
  p = cobj.dup("777");
  q = cobj.dup2("333",4);

  puts("ok");
}
