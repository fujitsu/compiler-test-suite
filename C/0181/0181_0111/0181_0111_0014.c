
 

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


int lto_sub_15(void) {
  double a[100][100],b[100][100],c[100][100];
  double not_art1[100][100],not_art2[100][100];
  double init1=2,init2=3,init3=4;
  int cond1=10,cond2=20;
  int i,j,ii;

  
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      not_art1[i][j] = 2.0;
      not_art2[i][j] = 5.0;
      a[i][j] = 0;
      b[i][j] = 0;
      c[i][j] = 0;
    }
  }
  
  
  i=0;
  while(i<100) {
    for(j=0; j<100; ++j) {

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      a[i][j] = init1;
      a[i][j] /= 2;
      a[i][j] += 7;
      a[i][j] *= 3;
      a[i][j] -= 1;
      a[i][j] *= 2;
      a[i][j] /=2;
    }
    ++i;
  }
  print_each_sum(a,b,c,not_art1,not_art2,1);
  

  
  for(i=0; i<100; ++i) {
    j=0;
    do{
      a[i][j] = init1;
      a[i][j] /= 2;
      a[i][j] += 7;
      a[i][j] *= 3;
      a[i][j] -= 1;
      a[i][j] *= 2;
      a[i][j] /=2;

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      b[i][j] = init2;
      b[i][j] /= 2;
      b[i][j] += 7;
      b[i][j] *= 3;
      b[i][j] -= 1;
      b[i][j] *= 2;
      b[i][j] /=2;
      j++;
    }while(j<100);
  }
  print_each_sum(a,b,c,not_art1,not_art2,2);


  
  ii=0;
  while(ii <1) {
    for(i=0; i<100; ++i) {
      for(j=0; j<100; ++j) {
	a[i][j] = init1;
	a[i][j] /= 2;
	a[i][j] += 7;
	a[i][j] *= 3;
	a[i][j] -= 1;
	a[i][j] *= 2;
	a[i][j] /=2;

	if(cond1 == 10) {
	  not_art1[i][j] = not_art1[i][j] + cond1;
	  not_art1[i][j] = not_art1[i][j] - 7;
	}

      }
    }
    ++ii;
  }
  print_each_sum(a,b,c,not_art1,not_art2,3);

  
  ii=-1;
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      do {
	a[i][j] = init1;
	a[i][j] /= 2;
	a[i][j] += 7;
	a[i][j] *= 3;
	a[i][j] -= 1;
	a[i][j] *= 2;
	a[i][j] /=2;
	++ii;
      } while (ii < 2);

      if(cond2 == 20) {
	not_art2[i][j] = not_art2[i][j] + cond2;
	not_art2[i][j] = not_art2[i][j] - 7;
      }

    }
  }
  print_each_sum(a,b,c,not_art1,not_art2,4);
  

  
  ii = 0;
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      while (ii <2) {
	a[i][j] = init1;
	a[i][j] /= 2;
	a[i][j] += 7;
	a[i][j] *= 3;
	a[i][j] -= 1;
	a[i][j] *= 2;
	a[i][j] /=2;
	ii = ii + 1;
      }

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      b[i][j] = init2;
      b[i][j] /= 2;
      b[i][j] += 7;
      b[i][j] *= 3;
      b[i][j] -= 1;
      b[i][j] *= 2;
      b[i][j] /=2;

      if(cond2 == 20) {
	not_art2[i][j] = not_art2[i][j] + cond2;
	not_art2[i][j] = not_art2[i][j] - 7;
      }

    }
  }
  print_each_sum(a,b,c,not_art1,not_art2,5);


  
  for(i=0; i<100; ++i) {
    for(j=0; j<100; ++j) {
      ii = 0;

      if(cond2 == 20) {
	not_art2[i][j] = not_art2[i][j] + cond2;
	not_art2[i][j] = not_art2[i][j] - 7;
      }

      a[i][j] = init1;
      a[i][j] /= 2;
      a[i][j] += 7;
      a[i][j] *= 3;
      a[i][j] -= 1;
      a[i][j] *= 2;
      a[i][j] /=2;

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      do {
	b[i][j] = init2;
	b[i][j] /= 2;
	b[i][j] += 7;
	b[i][j] *= 3;
	b[i][j] -= 1;
	b[i][j] *= 2;
	b[i][j] /=2;
	ii = ii +1;
      }while (ii < 3);
    }
  }
  print_each_sum(a,b,c,not_art1,not_art2,6);

  
  for(i=0; i<100; ++i) {
    ii = 1;
    for(j=0; j<100; ++j) {
      c[i][j] = init3;
      c[i][j] /= 2;
      c[i][j] += 7;
      c[i][j] *= 3;
      c[i][j] -= 1;
      c[i][j] *= 2;
      c[i][j] /=2;

      if(cond2 == 20) {
	not_art2[i][j] = not_art2[i][j] + cond2;
	not_art2[i][j] = not_art2[i][j] - 7;
      }

      while (ii < 3) {
	a[i][j] = init1;
	a[i][j] /= 2;
	a[i][j] += 7;
	a[i][j] *= 3;
	a[i][j] -= 1;
	a[i][j] *= 2;
	a[i][j] /=2;
	ii++;
      }

      if(cond1 == 10) {
	not_art1[i][j] = not_art1[i][j] + cond1;
	not_art1[i][j] = not_art1[i][j] - 7;
      }

      b[i][j] = init2;
      b[i][j] /= 2;
      b[i][j] += 7;
      b[i][j] *= 3;
      b[i][j] -= 1;
      b[i][j] *= 2;
      b[i][j] /=2;
    }
  }
  print_each_sum(a,b,c,not_art1,not_art2,7);


  return 0;
}
