#include <stdio.h>

#define N 100
int a[N];
int flag[5] = {0,1,1,1,1};

void init();
void output();


void foo1(){
  int i;

  init();

  if (flag[4]) {
    if (flag[3]) {
      if (flag[2]) {
      i=0;
	if (flag[1]) {

	  do {
	    a[i]=i;
	    i++;
	  } while (i<99);

	}
      }
    }
  }
  output();
}


void foo2(){
  int i;

  init();
  
  if (flag[4]) {
    if (flag[3]) {
    i=0;
      if (flag[2]) {
	if (flag[1]) {

	  do {
	    a[i]=i;
	    i++;
	  } while (i<99);

	}
      }
    }
  }
  output();
}


void foo3(){
  int i;

  init();

  i=0;
  if (flag[3]) goto label;
  if (flag[2]) {
    i=1;
  label:      
    if (flag[1]) {

      do {
	a[i]=i;
	i++;
      } while (i<99);

    }
  }
  output();
}

int main()
{
  foo1();
  foo2();
  foo3();
  return 0;
}

void init()
{
  int i;
  for(i=0; i<N ; i++) a[i]=0;
} 

void output()
{
  int i;
  for(i=0; i<N ; i++) printf("%d ",a[i]); printf("\n"); 
} 