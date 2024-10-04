#include <stdio.h>
#define N 10

void result_check(int,int,int,int,int,int,int,int,int,int);
static int result[]={0,1,2,3,4,5,6,7,8,9};
static int get_end() { return 10; }

int main()
{
  int a[N],i;

  
  for (i=0; i<10; i++) { a[i]=0; }
  
  
  for (i=0; i<get_end(); i++){
    a[i]=i;
  }
  result_check(a[0],a[1],a[2],a[3],a[4],
	       a[5],a[6],a[7],a[8],a[9]);

  return 0;
}

void result_check(int a0, int a1, int a2, int a3, int a4,
		  int a5, int a6, int a7, int a8, int a9)
{
  int i=0;
  i=0;   if (a0 != result[i]) { printf("NG %d %d %d\n",i,a0,result[i]); return; }
  i=i+1; if (a1 != result[i]) { printf("NG %d %d %d\n",i,a1,result[i]); return; }
  i=i+1; if (a2 != result[i]) { printf("NG %d %d %d\n",i,a2,result[i]); return; }
  i=i+1; if (a3 != result[i]) { printf("NG %d %d %d\n",i,a3,result[i]); return; }
  i=i+1; if (a4 != result[i]) { printf("NG %d %d %d\n",i,a4,result[i]); return; }
  i=i+1; if (a5 != result[i]) { printf("NG %d %d %d\n",i,a5,result[i]); return; }
  i=i+1; if (a6 != result[i]) { printf("NG %d %d %d\n",i,a6,result[i]); return; }
  i=i+1; if (a7 != result[i]) { printf("NG %d %d %d\n",i,a7,result[i]); return; }
  i=i+1; if (a8 != result[i]) { printf("NG %d %d %d\n",i,a8,result[i]); return; }
  i=i+1; if (a9 != result[i]) { printf("NG %d %d %d\n",i,a9,result[i]); return; }
  printf("OK\n");
}
