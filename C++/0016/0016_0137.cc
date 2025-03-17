

void func(void){}
int func(int a1){return 0;}
char func1(char a1){return 0;}


int x;
int *yyy = &x;
int **yy = &yyy;
int ***y = &yy;
struct SG0 {
  int sgi;
  char *sgc;
}sg0obj;
class CG0 {
 public:
  int cgi;
  char *cgc;
}cg0obj;
union UG0 {
  int ugi;
  char *ugc;
}ug0obj;
enum  EG0 {eg1, eg2}eg0obj;




class CG {
 public:
  virtual int vfunc(int a1){ return 0; }
}cgobj;
class CG1 : public CG {
 public:
  int vfunc(int a1){ return 1; }
}cg1obj;
CG *cgp = &cgobj, *cgp1 = &cg1obj;

struct SG {
  int vfunc1(char a1){ return 0; }
}sgobj;
struct SG1 : SG {
  int vfunc1(char a1){ return 2; }
}sg1obj;
SG *sgp = &sgobj, *sgp1 = &sg1obj;







class CG2 {
 public:
  virtual int vfunc2(int a1){ return 0; }
}cg2obj;
struct SG2 : public CG2 {
  int vfunc2(int a1){ return 1; }
}sg2obj;
CG2 *cg2p = &cg2obj, *cg2p1 = &sg2obj;


#include <stdio.h>
int main()
{
  ***y = 10;

  puts("ok");
}
