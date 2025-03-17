
#include <stdio.h>
#include <complex.h>

typedef double _Complex test_t;
typedef double          elem_t;

_Bool eq(test_t a,test_t b)
{
  return  ( a == b );
}

struct TAG {
  elem_t r;
  elem_t i;
};
 
int my_eq(struct TAG *p, struct TAG *q)
{
  return (p->r == q->r) && (p->i == q->i);
}

const elem_t basic[] = {
  -30.000 , -4.000, -0.0, 0.0 , 4.000, 30.000 
}; 
int main()
{
  int i,j,n = sizeof(basic)/sizeof(elem_t);
  int ii,jj;

  test_t input[n][n];
  test_t ans[n][n];

  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      input[i][j] = basic[i] + basic[j] * I;
    }
  }
  
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      for(ii=0;ii<n;ii++) {
        for(jj=0;jj<n;jj++) {
          _Bool b = eq (input[i][j],input[ii][jj]);
          int   a = my_eq((struct TAG *)&input[i][j],(struct TAG *)&input[ii][jj]);
          if( b != a ) {
            printf("(%g %g)",(double)(creal(input[i][j])),
			     (double)(cimag(input[i][j])));
            printf("(%g %g)",(double)(creal(input[ii][jj])),
			     (double)(cimag(input[ii][jj])));
	    printf("%d %d NG\n",eq (input[i][j],input[ii][jj]),
			        my_eq((struct TAG *)&input[i][j],
				      (struct TAG *)&input[ii][jj]));
	  }	
        }
      }
    }
  }

  puts("PASS");
}
