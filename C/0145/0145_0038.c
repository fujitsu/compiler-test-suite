

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10


void sub01(void);
void sub02(void);
void sub03(void);
void sub04(void);
void sub05(void);
void sub06(void);


void sub01(void)
{
  long int i,j,k,l;
  
  long int is, ie, iinc;
  long int js, je, jinc;
  int ks, ke, kinc;
  int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;

  is=ELM_MAX+1; ie=1;       iinc=1;
  js=0;         je=ELM_MAX; jinc=1;
  ks=ELM_MAX+1; ke=1;       kinc=1;
  ls=0;         le=ELM_MAX; linc=1;

#pragma omp parallel
  {
#pragma omp for collapse(4) reduction(+:res)
    for(i=is; i>ie; i = i-iinc){
      for(j=js; j<je; j=j+jinc){
	for(k=ks; k>ke; k -= kinc){
	  for(l=ls; l<le; l=l+linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no1 OK \n");
  }
  else {
    printf("no1 NG : %d \n",res);
  }
}

void sub02(void)
{
  long int i,j,k,l;
  
  long int is, ie, iinc;
  long int js, je, jinc;
  int ks, ke, kinc;
  int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;


  is=0; ie=ELM_MAX; iinc=1;
  js=0; je=ELM_MAX; jinc=1;
  ks=0; ke=ELM_MAX; kinc=1;
  ls=0; le=ELM_MAX; linc=1;

  for(i=is; i<ie; i +=iinc){
#pragma omp parallel
    {
#pragma omp for collapse(2) reduction(+:res) private(l)
      for(j=js; j<je; j += jinc){
	for(k=ks; k<ke; k += kinc){
	  for(l=ls; l<le; l=l+linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no2 OK \n");
  }
  else {
    printf("no2 NG : %d \n",res);
  }
}

void sub03(void)
{
  unsigned int i,j,k,l;
  
  long int is, ie, iinc;
  unsigned int js, je, jinc;
  unsigned int ks, ke, kinc;
  int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;

  is=ELM_MAX+1; ie=1;       iinc=1;
  js=0;         je=ELM_MAX; jinc=1;
  ks=ELM_MAX+1; ke=1;       kinc=1;
  ls=0;         le=ELM_MAX; linc=1;

#pragma omp parallel
  {
#pragma omp for collapse(3) reduction(+:res) private(l)
    for(i=is; i>ie; i = i-iinc){
      for(j=js; j<je; j=j+jinc){
	for(k=ks; k>ke; k -= kinc){
	  for(l=ls; l<le; l=l+linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no3 OK \n");
  }
  else {
    printf("no3 NG : %d \n",res);
  }
}

void sub04(void)
{
  int i,j,k,l;
  
  int is, ie, iinc;
  int js, je, jinc;
  unsigned int ks, ke, kinc;
  int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;

  is=0; ie=ELM_MAX; iinc=1;
  js=0; je=ELM_MAX; jinc=1;
  ks=0; ke=ELM_MAX; kinc=1;
  ls=0; le=ELM_MAX; linc=1;

  for(i=is; i<ie; i += iinc){
    for(j=js; j<je; j += jinc){
#pragma omp parallel
      {
#pragma omp for collapse(2) reduction(+:res)
	for(k=ks; k<ke; k += kinc){
	  for(l=ls; l<le; l=l+linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no4 OK \n");
  }
  else {
    printf("no4 NG : %d \n",res);
  }
}



void sub05(void)
{
  unsigned long int i,j,k,l;
  
  long int is, ie, iinc;
  unsigned int js, je, jinc;
  unsigned int ks, ke, kinc;
  unsigned long int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;

  is=ELM_MAX+1; ie=1; iinc=1;
  js=ELM_MAX+1; je=1; jinc=1;
  ks=ELM_MAX+1; ke=1; kinc=1;
  ls=ELM_MAX+1; le=1; linc=1;

#pragma omp parallel
  {
#pragma omp for collapse(4) reduction(+:res)
    for(i=is; i>ie; i -= iinc){
      for(j=js; j>je; j =j-jinc){
	for(k=ks; k>ke; k -= kinc){
	  for(l=ls; l>le; l=l-linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no5 OK \n");
  }
  else {
    printf("no5 NG : %d \n",res);
  }
}


void sub06(void)
{
  unsigned int i,j,k,l;
  
  long int is, ie, iinc;
  long int js, je, jinc;
  long int ks, ke, kinc;
  unsigned int ls, le, linc;    

  unsigned int ans=10000;
  unsigned int res=0;


  is=0; ie=ELM_MAX; iinc=1;
  js=0; je=ELM_MAX; jinc=1;
  ks=0; ke=ELM_MAX; kinc=1;
  ls=0; le=ELM_MAX; linc=1;

  for(i=is; i<ie; i +=iinc){
      for(j=js; j<je; j += jinc){
#pragma omp parallel
    {
#pragma omp for collapse(2) reduction(+:res)
	for(k=ks; k<ke; k += kinc){
	  for(l=ls; l<le; l=l+linc){
	    res += 1;
	  }
	}
      }
    }
  }


  if(res == ans) {
    printf("no6 OK \n");
  }
  else {
    printf("no6 NG : %d \n",res);
  }
}


int main(void) {

  sub01();
  sub02();
  sub03();
  sub04();
  sub05();
  sub06();

  return 0;
}
