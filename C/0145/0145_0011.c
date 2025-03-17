#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10

int get_evalue1(void);
int get_evalue2(void);
int get_evalue3(void);
int get_svalue1(void);
int get_svalue2(void);
int get_svalue3(void);
int get_ivalue1(void);
int get_ivalue2(void);
int get_ivalue3(void);

void sub01(int,int,int,int,int,int,int,int,int);


int get_evalue1(void) {
  int a;
  a=5;
  a +=5;
  return a; 
}
int get_evalue2(void) {
  int a;
  a=10;
  return a; 
}
int get_evalue3(void) {
  return 10; 
}
int get_svalue1(void) {
  int a;
  a=2;
  a -=1;
  return a; 
}
int get_svalue2(void) {
  int a;
  a=1;
  return a; 
}
int get_svalue3(void) {
  return 1; 
}
int get_ivalue1(void) {
  int a;
  a=2;
  a -=1;
  return a; 
}
int get_ivalue2(void) {
  int a;
  a=1;
  return a; 
}
int get_ivalue3(void) {
  return 1; 
}




void sub01(int is ,int ie, int iinc,
	   int js ,int je, int jinc,
	   int ks ,int ke, int kinc)

{
  int i,j,k;
  long int ans=729;
  long int res=0;

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<ie; i=i+iinc){
    for(j=js; j<je; j=j+jinc){
      for(k=ks; k<ke; k=k+kinc){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_01: OK \n");
  } else {
    printf("loop_01: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<get_evalue3(); i++){
    for(j=js; j<get_evalue1(); ++j){
      for(k=ks; k<get_evalue2(); ++k){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_02a: OK \n");
  } else {
    printf("loop_02a: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<get_evalue3(); i++){
    for(j=js; j<get_evalue3(); ++j){
      for(k=ks; k<get_evalue3(); ++k){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_02b: OK \n");
  } else {
    printf("loop_02b: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<get_evalue1(); i=i+iinc){
    for(j=js; j<get_evalue2(); j=j+jinc){
      for(k=ks; k<get_evalue3(); k=k+kinc){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_02c: OK \n");
  } else {
    printf("loop_02c: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=get_svalue1(); i<ie; i++){
    for(j=get_svalue2(); j<je; j++){
      for(k=get_svalue3(); k<ke; k++){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_03a: OK \n");
  } else {
    printf("loop_03a: NG %d %d\n",res,ans);
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=get_svalue3(); i<ie; i=i+iinc){
    for(j=get_svalue3(); j<je; j=j+jinc){
      for(k=get_svalue3(); k<ke; k=k+kinc){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_03b: OK \n");
  } else {
    printf("loop_03b: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=get_svalue3(); i<get_evalue2(); i=i+iinc){
    for(j=get_svalue1(); j<get_evalue1(); j=j+jinc){
      for(k=get_svalue2(); k<get_evalue3(); k=k+kinc){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_03c: OK \n");
  } else {
    printf("loop_03c: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=get_svalue1(); i<ie; i=i+get_ivalue1()){
    for(j=get_svalue2(); j<je; j=j+get_ivalue2()){
      for(k=get_svalue3(); k<ke; k=k+get_ivalue3()){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_04a: OK \n");
  } else {
    printf("loop_04a: NG \n");
  }

  res = 0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<ie; i=i+get_ivalue1()){
    for(j=js; j<je; j=j+get_ivalue2()){
      for(k=ks; k<ke; k=k+get_ivalue3()){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_04b: OK \n");
  } else {
    printf("loop_04b: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=is; i<ie; i=i+get_ivalue3()){
    for(j=js; j<je; j=j+get_ivalue3()){
      for(k=ks; k<ke; k=k+get_ivalue3()){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_04c: OK \n");
  } else {
    printf("loop_04c: NG \n");
  }

  res=0;
#pragma omp parallel for collapse(3) reduction(+:res)
  for(i=get_svalue1(); i<ie; i=i+get_svalue1()){
    for(j=get_svalue2(); j<je; j=j+get_svalue2()){
      for(k=get_svalue3(); k<ke; k=k+get_svalue3()){
	res+=1;
      }
    }
  }
  if(res== ans) {
    printf("loop_04d: OK \n");
  } else {
    printf("loop_04d: NG \n");
  }

}
int main(void) {

  int mis=1,mie=ELM_MAX1,miinc=1;
  int mjs=1,mje=ELM_MAX2,mjinc=1;
  int mks=1,mke=ELM_MAX3,mkinc=1;


  sub01(mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc);


  return 0;
}
