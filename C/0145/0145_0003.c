#include <stdio.h>
#include <omp.h>

void sub01();
void sub02();
void sub03();
void sub04();
void sub05();
void sub06();


void sub01()
{
  unsigned long int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;

#pragma omp parallel for collapse(4) reduction(+:res)
  for(i=11; i> 1; i--){
    for(j=11; j > 1; j--){
      for (k=11; k > 1; k--) {
	for (l=11; l > 1; l--) {
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

void sub02()
{
  unsigned int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;


  for(i=0; i < 10; i++){
#pragma omp parallel for collapse(3) reduction(+:res)
    for(j=11; j > 1; j--){
      for (k=0; k < 10; k++) {
	for (l=11; l > 1; l--) {
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
  int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;


  for(i=0; i < 10; i++){
#pragma omp parallel for collapse(3) reduction(+:res)
    for(j=11; j > 1; j--){
      for (k=0; k < 10; k++) {
	for (l=11; l > 1; l--) {
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
  long int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;


  for(i=11; i> 1; i--){
    for(j=11; j > 1; j--){
#pragma omp parallel for collapse(2) reduction(+:res)
      for (k=11; k > 1; k--) {
	for (l=11; l > 1; l--) {
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
  long int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;

  for(i=11; i> 1; i--){
#pragma omp parallel for collapse(3) reduction(+:res)
    for(j=1; j <= 10; ++j){
      for (k=1; k <= 10; k++) {
	for (l=1; l <= 10; l++) {
	  res += 1;
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
  long int i,j,k,l;
  int res,ans;
  res=0;
  ans = 10000;

#pragma omp parallel for collapse(4) reduction(+:res)
  for(i=11; i> 1; i--){
    for(j=11; j > 1; j--){
      for (k=11; k > 1; k--) {
	for (l=11; l > 1; l--) {
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
  sub01();
  sub02();
  sub03();
  sub04();
  sub05();
  sub06();

  return 0;
}
