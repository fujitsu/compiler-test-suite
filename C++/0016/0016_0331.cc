









char c;
signed char sc;
short  s;
unsigned short us;
int i;
unsigned int ui;
long int li;
unsigned long int uli;
long long int lli;
unsigned long long int ulli;
float f;
double d;
struct ST{
  int someting;
  int i;
}st,st2;
class CLS{
 public: 
 int someting;
 int j;
}cls,cls2;
union UN{
 int someting;
 int k;
}un,un2;
enum EN{ a,b}en,en2;

int ary[10];
char  *p;
int dummy;
int (*pf)(char);

int pfunc(char i)
{
 c=0;
 sc=0;
 i=0;
 ui=0;
 s=0;
 us=0;
 li=0;
 uli=0;
 lli=0;
 ulli=0;
 f=0;
 d=0;
 st=st2;
 cls=cls2;
 un=un2;
 en=en2;
 ary[1]=0;

 dummy=c;
 dummy=dummy+sc;
 dummy=dummy+s;
 dummy=dummy+us;
 dummy=dummy+i;
 dummy=dummy+ui;
 dummy=dummy+li;
 dummy=dummy+uli;
 dummy=dummy+lli;
 dummy=dummy+ulli;
 dummy=dummy+f;
 dummy=dummy+d;
 dummy=dummy+en;
 dummy=dummy+ary[2];

 dummy=dummy+st.i;
 dummy=dummy+cls.j;
 dummy=dummy+un.k;
 p=p+0;
 return dummy;
}
#include <stdio.h>
int main(){
 pf=pfunc;
 st.i=(*pf)(10);
 puts("ok");
 return st.i;
}

