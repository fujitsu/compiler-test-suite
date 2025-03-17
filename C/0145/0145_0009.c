#include <stdio.h>
#include <omp.h>

int i,j,k,l;
unsigned int iu,ju,ku,lu;
long int il,jl,kl,ll;
unsigned long int iul,jul,kul,lul;
  
int is, ie, iinc;
int js, je, jinc;
int ks, ke, kinc;
int ls, le, linc;    


void sub01();
void sub02();
void sub03();
void sub04();
void sub05();
void sub06();




void sub01()
{
  int res=0;
  int ans = 10000;
  int xxx;


  for(i=is; i<ie; i=i+iinc){
#pragma omp parallel for collapse(4) reduction(+:res)
    for(j=js; j<je; j=j+jinc){
      for(k=ks; k >= ke; k=k-kinc){
	for(l=ls; l<le; l=l+linc){
	  for(xxx=0; xxx<1; ++xxx) {
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
  int res=0;
  int ans = 10000;

  for(il=is; il<ie; il=il+iinc){
#pragma omp parallel for collapse(3) reduction(+:res)
    for(jl=js; jl<je; jl=jl+jinc){
      for(kl=ks; kl < ke; kl=kl+kinc){
	for(ll=ls; ll<le; ll=ll+linc){
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

void sub03()
{
  int res=0;
  int ans = 10000;

#pragma omp parallel for collapse(4) reduction(+:res)
  for(il=is; il > ie; il=il-iinc){
    for(jl=js; jl > je; jl=jl-jinc){
      for(kl=ks; kl > ke; kl=kl-kinc){
	for(ll=ls; ll > le; ll=ll-linc){
	  res += 1;
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
  int res=0;
  int ans = 10000;

#pragma omp parallel for collapse(4) reduction(+:res)
  for(i=is; i>ie; i=i-iinc){
    for(j=js; j<je; j=j+jinc){
      for(k=ks; k > ke; k=k-kinc){
	for(l=ls; l<le; l=l+linc){
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

void sub05()
{
  int res=0;
  int ans = 10000;
  int xxx;

  for(iu=is; iu<ie; iu=iu+iinc){
#pragma omp parallel for collapse(4) reduction(+:res)
    for(ju=js; ju<je; ju=ju+jinc){
      for(ku=ks; ku < ke; ku=ku+kinc){
	for(lu=ls; lu<le; lu=lu+linc){
	  for(xxx=0; xxx<1; ++xxx) {
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
  int res=0;
  int ans = 10000;

#pragma omp parallel for collapse(4) reduction(+:res)
  for(iul=is; iul>ie; iul=iul-iinc){
    for(jul=js; jul<je; jul=jul+jinc){
      for(kul=ks; kul > ke; kul=kul-kinc){
	for(lul=ls; lul<le; lul=lul+linc){
	  res += 1;
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

  is=0; ie=10; iinc=1;
  js=0; je=10; jinc=1;
  ks=10; ke=1; kinc=1;
  ls=0; le=10; linc=1;
  sub01();

  is=0; ie=10; iinc=1;
  js=0; je=10; jinc=1;
  ks=0; ke=10; kinc=1;
  ls=0; le=10; linc=1;
  sub02();

  is=11; ie=1; iinc=1;
  js=11; je=1; jinc=1;
  ks=11; ke=1; kinc=1;
  ls=11; le=1; linc=1;
  sub03();

  is=11; ie=1; iinc=1;
  js=0; je=10; jinc=1;
  ks=11; ke=1; kinc=1;
  ls=0; le=10; linc=1;
  sub04();

  is=0; ie=10; iinc=1;
  js=0; je=10; jinc=1;
  ks=0; ke=10; kinc=1;
  ls=0; le=10; linc=1;
  sub05();

  is=11; ie=1; iinc=1;
  js=0; je=10; jinc=1;
  ks=11; ke=1; kinc=1;
  ls=0; le=10; linc=1;
  sub06();

  return 0;
}
