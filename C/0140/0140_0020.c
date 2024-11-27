#include <stdio.h>


#define N 50
#define ANS 2520
int main()
{
  int i, j;
  int a[N][N];
  int sum = 0;

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
	a[i][j] = 0;
    }
  }


  for (i = 0; i < N; i++) {
    a[i][0] = i;
    a[i][1] = j;
    a[i][3] = i;
    a[i][4] = i;
    a[i][5] = j;
    a[i][6] = i;
    a[i][7] = i;
    a[i][8] = i;
    a[i][9] = i;
    a[i][10] = i;
    a[i][j-9] = j;
    a[i][j-8] = i;
    a[i][j-7] = j;
    a[i][j-6] = i;
    a[i][j-5] = j;
    a[i][j-4] = i;
    a[i][j-3] = j;
    a[i][j-2] = i;
    a[i][j-1] = j;
    a[i][11] = i;
    a[i][12] = i;
    a[i][13] = j;
    a[i][14] = i;
    a[i][15] = i;
    a[i][16] = i;
    a[i][17] = i;
    a[i][18] = j;
    a[i][19] = i;
    a[i][20] = i;
    a[i][21] = i;
    a[i][22] = i;
    a[i][23] = j;
    a[i][24] = i;
    a[i][25] = i;
    a[i][26] = i;
    a[i][27] = i;
  }


  for (i = 0; i < N; i++) {
    a[i][26] = j;
    a[i][27] = i;
    a[i][28] = i;
    a[i][29] = j;
    a[i][30] = i;
    a[i][31] = i;
    a[i][32] = i;
    a[i][33] = i;
    a[i][j-11] = i;
    a[i][j-10] = i;
    a[i][j-9] = j;
    a[i][j-8] = i;
    a[i][j-7] = j;
    a[i][j-6] = i;
    a[i][j-5] = j;
    a[i][j-4] = i;
    a[i][j-3] = j;
    a[i][j-2] = i;
    a[i][j-1] = j;
    a[i][36] = i;
    a[i][37] = i;
    a[i][38] = i;
    a[i][35] = j;
    a[i][34] = j;
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      if (!(a[i][j] > 10)) {
	sum += a[i][j];
      }
      else {
	if (a[i][j] >= N-1) {
	  sum += -1;
	}
	else {
	  sum += 1;
	}
      }
    }
  }

  printf("sum  = %d --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}
