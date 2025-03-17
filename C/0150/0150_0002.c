#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct stag {int stm;}st ={1};
union  utag {int unm;}un ={1};
enum   etag {e}en={1};
int  fp0(int *);
int  fp1(int *);
int  fp2(float *);
int  fp3(struct stag*);
int  frr1(int  [1]);
int  frr2(int  []);
int  fs1(struct stag);
int  fs2(union  utag);
int  fs3(enum  etag);
int  ff1(int);
int  fff();
int main()
{
  int w=0,x=0,y=0,z=0;
  int a=1,*ap;
  int ar[1]={1};
  int br[1]={1};
  float f=1.0,*fp;
  struct stag *stp=&st;
 
  ap=&a;fp=&f;
  printf(" START\n");
  w= fp0(1-1)+fp1(ap)+fp2(fp)+fp3(stp);  
  x= fs1(st)+fs2(un)+fs3(en);            
  y= ff1(fff());                         
  z= frr1(ar) + frr2(br);                  
 
  if (w==3 && x==3 && y==1 && z==2)
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("W=%d\n",w);
    printf("X=%d\n",x);
    printf("Y=%d\n",y);
    printf("Z=%d\n",z);
  }
  printf(" END  \n");
exit (0);
}
int fp0(int *a) { return (int) a;}
int fp1(int *a) { return *a; }
int fp2(float *fp) { return (int )*fp; }
int fp3(struct stag *stp) { return stp->stm; }
int fs1(struct stag st) { return st.stm; }
int fs2(union  utag un) { return un.unm; }
int fs3(enum   etag en) { return en; }
int ff1(int a) { return a; }
int fff() { return 1; }
int frr1(int a[1]) { return *a; }
int frr2(int b[]) { return *b; }
