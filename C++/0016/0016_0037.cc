short dummy(){return 0;};
void dummy2(char,int) {};
int (*dummy3)[10];
char (*dummy4)(int,char);
int a[2];
char (*b)[4];
int c[3][4];
int (&d)[2]=a;
char *e[10];
short (&f)()=dummy;
void  (&g)(char,int)=dummy2;
int (*&h)[10]=dummy3;
char (*&ii)(int,char)=dummy4;
int i=0;
#include <stdio.h>
int main(){
     try {
      switch (i){  
      case 0:
          throw a;
      case 1:
          throw b;
      case 2:
          throw c;
      case 3:
          throw d;
      case 4:
          throw e;
      case 5:
          throw f;
      case 6:
          throw g;
      case 7:
          throw h;
      case 8:
          throw ii;
      case 9:
          throw 100;
       }
     }
     catch (...){}
     puts("ok");
}
