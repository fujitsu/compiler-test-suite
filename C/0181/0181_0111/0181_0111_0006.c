
 

#include <stdio.h>

static void print_each_sum(double a[][100],double b[][100],double c[][100],
		    double not_art1[][100],double not_art2[][100], int loop_num);

static void print_each_sum(double a[][100],double b[][100],double c[][100],
		    double not_art1[][100],double not_art2[][100],int loop_num)
{
  double sum1=0,sum2=0,sum3=0,sum4=0,sum5=0;
  int i,j;

  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      sum4 += not_art1[i][j];
      sum5 += not_art2[i][j];
      sum1 += a[i][j];
      sum2 += b[i][j];
      sum3 += c[i][j];
    }
  }
  printf ("loop%d : %lf ,%lf ,%lf ,%lf ,%lf \n",
	  loop_num,sum1,sum2,sum3,sum4,sum5);

}


int lto_sub_7(void) {
  double a[100][100],b[100][100],c[100][100];
  double not_art1[100][100],not_art2[100][100];
  double init1=2,init2=3,init3=4;
  int cond1=10;
  int i,j;

  
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      not_art1[i][j] = 2.0;
      not_art2[i][j] = 5.0;
      a[i][j] = 0;
      b[i][j] = 0;
      c[i][j] = 0;
    }
  }
  
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      a[i][j] = init1;
      a[i][j] /= 2;
      a[i][j] += 7;
      a[i][j] *= 3;
      a[i][j] -= 1;
      a[i][j] *= 2;
      a[i][j] /=2;
    }
    for(j=0; j<100; ++j) {
      b[i][j] = init2;
      b[i][j] /= 2;
      b[i][j] += 7;
      b[i][j] *= 3;
      b[i][j] -= 1;
      b[i][j] *= 2;
      b[i][j] /=2;

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }
    }
    for(j=0; j<100; ++j) {
      c[i][j] = init3;
      c[i][j] /= 2;
      c[i][j] += 7;
      c[i][j] *= 3;
      c[i][j] -= 1;
      c[i][j] *= 2;
      c[i][j] /=2;
    }
  }
  print_each_sum(a,b,c,not_art1,not_art2,2);

  return 0;
}
