

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10

void sub01(void);
void sub02(void);
void sub03(void);
void sub04(void);
void sub05(void);
void sub06(void);

  int i,j,k,l;
  unsigned int iu,ju,ku,lu;
  long int il,jl,kl,ll;
  unsigned long int jul,kul;
  
  unsigned int is, ie, iinc;
  unsigned int js, je, jinc;
  unsigned int ks, ke, kinc;
  unsigned int ls, le, linc;
  unsigned int xxxinc=1;

void sub01()
{
  unsigned int ans=10000;
  unsigned int res=0;


  for(i=is; i<ie; i=i+iinc){
#pragma omp parallel
    {
#pragma omp for collapse(2) reduction(+:res) private(l)
      for(jul=js; jul<je; jul += jinc){
	for(kul=ks; kul<ke; kul += kinc){
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

void sub02()
{
  unsigned int ans=10000;
  unsigned int res=0;

#pragma omp parallel
  {
#pragma omp for collapse(4) reduction(+:res)
    for(il=is; il<ie; il=il+iinc){
      for(jl=js; jl<je; jl += jinc){
	for(kl=ks; kl<ke; kl=kl+kinc){
	  for(ll=ls; ll<le; ll += linc){
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


void sub03()
{
  unsigned int ans=10000;
  unsigned int res=0;


  for(il=is; il>ie; il = il-iinc){
#pragma omp parallel
    {
#pragma omp for collapse(3) reduction(+:res)
      for(jul=js; jul>je; jul -= jinc){
	for(kul=ks; kul>ke; kul -= kinc){
	  for(ll=ls; ll>le; ll -= linc){
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

void sub04()
{
  unsigned int ans=10000;
  unsigned int res=0;
  unsigned int xxx;


#pragma omp parallel
  {
#pragma omp for collapse(5) reduction(+:res)
    for(iu=is; iu>ie; iu = iu - iinc){
      for (xxx=1; xxx<2; xxx = xxx + xxxinc) {
	for(ju=js; ju<je; ju = jinc + ju){
	  for(ku=ks; ku>ke; ku -= kinc){
	    for(lu=ls; lu<=le-1; lu += linc){
	      res += 1;
	    }
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

void sub05()
{
  unsigned int ans=10000;
  unsigned int res=0;


#pragma omp parallel
    {
#pragma omp for collapse(4) reduction(+:res)
  for(i=is; i>ie; i -= iinc){
      for(j=js; j>je; j = j - jinc){
	for(k=ks; k>ke; k = k - kinc){
	  for(l=ls; l>le; l -= linc){
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


void sub06()
{
  unsigned int ans=10000;
  unsigned int res=0;

#pragma omp parallel
  {
#pragma omp for collapse(3) reduction(+:res) private(ll)
    for(il=is; il<ie; il=il+iinc){
      for(jl=js; jl<je; jl += jinc){
	for(kl=ks; kl<ke; kl=kl+kinc){
	  for(ll=ls; ll<le; ll += linc){
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

  is=0;  ie=ELM_MAX;  iinc=1;
  js=0;  je=ELM_MAX;  jinc=1;
  ks=0;  ke=ELM_MAX;  kinc=1;
  ls=0;  le=ELM_MAX;  linc=1;
  sub01();
  sub02();

  is=ELM_MAX+1;  ie=1;  iinc=1;
  js=ELM_MAX+1;  je=1;  jinc=1;
  ks=ELM_MAX+1;  ke=1;  kinc=1;
  ls=ELM_MAX+1;  le=1;  linc=1;
  sub03();

  is=ELM_MAX+1;  ie=1;  iinc=1;
  js=0;  je=ELM_MAX;  jinc=1;
  ks=ELM_MAX+1;  ke=1;  kinc=1;
  ls=0;  le=ELM_MAX;  linc=1;
  sub04();

  is=ELM_MAX+1;  ie=1;  iinc=1;
  js=ELM_MAX+1;  je=1;  jinc=1;
  ks=ELM_MAX+1;  ke=1;  kinc=1;
  ls=ELM_MAX+1;  le=1;  linc=1;
  sub05();

  is=0;  ie=ELM_MAX;  iinc=1;
  js=0;  je=ELM_MAX;  jinc=1;
  ks=0;  ke=ELM_MAX;  kinc=1;
  ls=0;  le=ELM_MAX;  linc=1;
  sub06();

  return 0;
}
