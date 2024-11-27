#include <stdlib.h>
#include <stdio.h>
#include <math.h>


#define  PI 7
#define  MAX_A  10
#define  _OK_   (1)
#define  _NG_   (0)

extern void sub() ,subx(), Flag_on(), Flag_off();
extern char get_ok(),get_ng();
extern long get_answer();
int main()
{
  long  a[MAX_A],b[MAX_A],c[MAX_A];
  long  xx,yy;
  short int aa[MAX_A],bb[MAX_A],cc[MAX_A];
  int   i;
  printf("** 007 START **\n");
  
  for (i=0;i<MAX_A;i++){
    b[i] = 
    bb[i]= i+1;
    c[i] = cc[i] = i+2;
  }
  for (i=0;i<MAX_A;i++){
    a[i] = b[i] * c[i] / PI;
    aa[i] = bb[i] * cc[i] / PI;
  }
  if (a[2]/PI == aa[2]/PI){
    xx = a[PI]/PI*aa[2]/(PI/PI);
    yy = a[PI]+1;
    if (yy > 4){
      sub(a,aa,xx*yy,get_ok());
    }else{
      sub(a,aa,xx+yy,get_ng());
    }
  }else {

    subx (a,aa,a[0]*a[2]);
  }
  printf("** 007 END **\n");
exit (0);
}

struct flag_t{
  char flag1;
  struct in_flag{
    char flag_in1[MAX_A + 1];
  }intag;
};

void sub(x,y,z,mode)
long x[];
short int y[];
long z;
char mode;
{
  struct flag_t flag;
  int i=0;

  LOOP:
     Flag_off(&flag,i);
     if (i++<MAX_A) goto LOOP;

  if (mode == _OK_){
    if (z == get_answer(z)){
      for (i=0;i<MAX_A;i++){
	if (x[i] == y[i])
	  Flag_on(flag,i);
	else 
	  Flag_off(&flag,i);
      }
    }else Flag_off(&flag,1);
  }else Flag_off(&flag,1);
  if (flag.intag.flag_in1[0] == flag.intag.flag_in1[1] &&
      flag.intag.flag_in1[0] >= 0)
    printf("007 OK\n");
  else
    printf("007 NG\n");
    
}

void subx(x,y,z)
long x[];
short int y[];
long z;
{
  printf("NG\n");
}

char get_ok() { return _OK_;}

char get_ng() { return _NG_;}

void Flag_off(s,i)
struct flag_t *s;
int i;
{
  s->intag.flag_in1[i*(i+1)/(i+1)]=0;
}

void Flag_on(s,i)
struct flag_t s;
int i;
{
  s.intag.flag_in1[i*(i+1)/(i+1)]=1;
}

long get_answer(z)
long z;
{
  if (z == 11 ) return z;
  else return 0;
}
