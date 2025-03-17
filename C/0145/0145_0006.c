

#include <stdio.h>
#include <omp.h>

void sub01(int,int,int,int,int,int,int,int,int,int,int,int);
void sub02(int,int,int,int,int,int,int,int,int,int,int,int);
void sub03(int,int,int,int,int,int,int,int,int,int,int,int);
void sub04(int,int,int,int,int,int,int,int,int,int,int,int);

void sub01(int is ,int ie, int iinc,
	   int js ,int je, int jinc,
	   int ks ,int ke, int kinc,
	   int ls ,int le, int linc)
{
  long int i,j,k,l;
  int ans=10000;
  int res=0;

#pragma omp parallel shared(res) private(i,j,k,l)
#pragma omp for collapse(4) reduction(+:res)
  for(i=is; i<ie; i=i+iinc){
    for(j=js; j > je; j=j-jinc){
      for(k=ks; k<ke; k=k+kinc){
	for(l=ls; l<le; l=l+linc){
	  res += 1;
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

void sub02(int is ,int ie, int iinc,
	   int js ,int je, int jinc,
	   int ks ,int ke, int kinc,
	   int ls ,int le, int linc)
{
  unsigned long int i,j,k,l;
  int ans=10000;
  int res=0;

#pragma omp parallel shared(res) private(i,j,k,l)
#pragma omp for collapse(4) reduction(+:res)
  for(i=is; i<ie; i=i+iinc){
    for(j=js; j < je; j=j+jinc){
      for(k=ks; k<ke; k=k+kinc){
	for(l=ls; l<le; l=l+linc){
	  res += 1;
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


void sub03(int is ,int ie, int iinc,
	   int js ,int je, int jinc,
	   int ks ,int ke, int kinc,
	   int ls ,int le, int linc)
{
  int i,j,k,l;
  int xxx; 
  int ans=10000;
  int res=0;


  for(i=is; i<ie; i=i+iinc){
#pragma omp parallel shared(res) private(j,k,l,xxx)
#pragma omp for collapse(4) reduction(+:res)
    for(j=js; j < je; j=j+jinc){
      for(k=ks; k<ke; k=k+kinc){
	for(l=ls; l<le; l=l+linc){
	  for(xxx=0; xxx<1; ++xxx) {
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

void sub04(int is ,int ie, int iinc,
	   int js ,int je, int jinc,
	   int ks ,int ke, int kinc,
	   int ls ,int le, int linc)
{
  long int i,j,k,l;
  int ans=10000;
  int res=0;

#pragma omp parallel shared(res) private(i,j,k,l)
#pragma omp for collapse(4) reduction(+:res)
  for(i=is; i>ie; i=i-iinc){
    for(j=js; j > je; j=j-jinc){
      for(k=ks; k>ke; k=k-kinc){
	for(l=ls; l>le; l=l-linc){
	  res += 1;
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


int main(void) {

  int mis=0,mie=10,miinc=1;
  int mjs=11,mje=1,mjinc=1;
  int mks=0,mke=10,mkinc=1;
  int mls=0,mle=10,mlinc=1;

  sub01(mis,mie,miinc,
	mjs,mje,mjinc,
	mks,mke,mkinc,
	mls,mle,mlinc);
  
  mis=0;  mie=10; miinc=1;
  mjs=0;  mje=10; mjinc=1;
  mks=0;  mke=10; mkinc=1;
  mls=0;  mle=10; mlinc=1;
  
  sub02(mis,mie,miinc,
	mjs,mje,mjinc,
	mks,mke,mkinc,
	mls,mle,mlinc);
  
  sub03(mis,mie,miinc,
	mjs,mje,mjinc,
	mks,mke,mkinc,
	mls,mle,mlinc);

  mis=11;  mie=1; miinc=1;
  mjs=11;  mje=1; mjinc=1;
  mks=11;  mke=1; mkinc=1;
  mls=11;  mle=1; mlinc=1;

  sub04(mis,mie,miinc,
	mjs,mje,mjinc,
	mks,mke,mkinc,
	mls,mle,mlinc);


  return 0;
}
