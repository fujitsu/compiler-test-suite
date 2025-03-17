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
  
char* func1(char* p) {
  char* c1 = new char[10];
  strcpy(c1,p);
  return c1;
}
char* func2(char* p) {
  char* c2 = (char*)malloc(10);
  strcpy(c2,p);
  return c2;
}

C cobj;
#include <stdio.h>
int main(){
  char* p = new char[10];
  char* q = (char*)malloc(10);
  strcpy(p,"123456789");
  strcpy(q,p);
  delete p;
  free(q);
  p=func1(p);
  delete p;
  q=func2(q);
  free(q);
  p = cobj.dup("777");
  delete p;
  q = cobj.dup2("333",4);
  free(q);

  puts("ok");
}
