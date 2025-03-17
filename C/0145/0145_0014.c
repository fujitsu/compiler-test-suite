
//This test assumes that #pragma parallel omp is ignored.
#include <stdio.h>

#define ELM_MAX 10


int main(void) {

  int flag =0;
  unsigned int i,j,k,l,m,o;
  unsigned long int il,jl,kl,ll,ml,ol;
  unsigned int n1,n2,n3,n4,n5,n6;
  unsigned int s1,s2,s3,s4,s5,s6;
  unsigned int step1,step2,step3,step4,step5,step6;
  unsigned int ans=1000000;
  unsigned int res1=0,res2=0,res3=0,res4=0;

  s1 = 0;           n1 = ELM_MAX; step1=1;
  s2 = 0;           n2 = ELM_MAX; step2=1;
  s3 = ELM_MAX+1;   n3 = 1;       step3=1;
  s4 = ELM_MAX+1;   n4 = 1;       step4=1;
  s5 = ELM_MAX+1;   n5 = 1;       step5=1;
  s6 = ELM_MAX+1;   n6 = 1;       step6=1;
  printf("loop 01 \n");
  for (i = s1; i < n1 ; i += step1 ){
    for (j = s2; j < n2 ; j += step2 ){
#pragma parallel omp for collapse(4) reduction(+:res1)
      for (k = s3; k > n3 ; k -= step3 ){
	for (l = s4; l > n4 ; l -= step4 ){
	  for (m = s5; m > n5 ; m -= step5 ){
	    for (o = s6; o > n6 ; o -= step6 ){
	      res1 += 1;
	    }
	  }
	}
      }
    }
  }

  s1 = ELM_MAX+1;   n1 = 1;         step1=1;
  s2 = 0;           n2 = ELM_MAX;   step2=1;
  s3 = ELM_MAX+1;   n3 = 1;         step3=1;
  s4 = 2;           n4 = ELM_MAX+2; step4=1;
  s5 = ELM_MAX+1;   n5 = 1;         step5=1;
  s6 = 0;           n6 = ELM_MAX;   step6=1;
  printf("loop 02 \n");
#pragma parallel omp for collapse(6) reduction(+:res2)
  for (i = s1; i > n1 ; i -= step1 ){
    for (j = s2; j < n2 ; j += step2 ){
      for (k = s3; k > n3 ; k -= step3 ){
	for (l = s4; l < n4 ; l += step4 ){
	  for (m = s5; m > n5 ; m -= step5 ){
	    for (o = s6; o < n6 ; o += step6 ){
	      res2 += 1;
	    }
	  }
	}
      }
    }
  }

  s1 = ELM_MAX+1;   n1 = 1;         step1=1;
  s2 = 0;           n2 = ELM_MAX;   step2=1;
  s3 = ELM_MAX+1;   n3 = 1;         step3=1;
  s4 = 2;           n4 = ELM_MAX+2; step4=1;
  s5 = ELM_MAX+1;   n5 = 1;         step5=1;
  s6 = 0;           n6 = ELM_MAX;   step6=1;
  printf("loop 03 \n");
  for (il = s1; il > n1 ; il -= step1 ){
#pragma parallel omp for collapse(4) reduction(+:res3) private(ol)
    for (jl = s2; jl < n2 ; jl += step2 ){
      for (kl = s3; kl > n3 ; kl -= step3 ){
	for (ll = s4; ll < n4 ; ll += step4 ){
	  for (ml = s5; ml > n5 ; ml -= step5 ){
	    for (ol = s6; ol < n6 ; ol += step6 ){
	      res3 += 1;
	    }
	  }
	}
      }
    }
  }


  s1 = ELM_MAX+1;   n1 = 1;         step1=1;
  s2 = ELM_MAX+1;   n2 = 1;         step2=1;
  s3 = ELM_MAX+1;   n3 = 1;         step3=1;
  s4 = 2;           n4 = ELM_MAX+2; step4=1;
  s5 = 0;           n5 = ELM_MAX;   step5=1;
  s6 = 0;           n6 = ELM_MAX;   step6=1;
  printf("loop 04 \n");
#pragma parallel omp for collapse(6) reduction(+:res4)
  for (il = s1; il > n1 ; il -= step1 ){
    for (jl = s2; jl > n2 ; jl -= step2 ){
      for (kl = s3; kl > n3 ; kl -= step3 ){
	for (ll = s4; ll < n4 ; ll += step4 ){
	  for (ml = s5; ml < n5 ; ml += step5 ){
	    for (ol = s6; ol < n6 ; ol += step6 ){
	      res4 += 1;
	    }
	  }
	}
      }
    }
  }

  if(res1 != ans ){
    flag += 1;
  }
  if(res2 != ans ){
    flag += 2;
  }
  if(res3 != ans ){
    flag += 4;
  }
  if(res4 != ans ){
    flag += 8;
  }

  if(flag == 0) {
    printf("OK \n");
  } else {
    printf("NG :%d \n",flag);
  }
  
}
