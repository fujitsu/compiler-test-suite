#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>

  int x[]         = { 1, 3, 5 } ;
  float y[4][3] = { { 1, 3, 5 },
                         { 2, 4, 6 },
                         { 3, 5, 7 }, } ;
  float y2[4][3] = { 1, 3, 5, 2, 4, 6, 3, 5, 7 } ;
  float z[4][3] = { {1}, {2}, {3}, {4} } ;
  struct { int a[3],b ; } w = { {1}, 2 } ;
  short q[4][3][2] = { { 1 },
                              { 2, 3 },
                              { 4, 5, 6 } } ;
  short q2[4][3][2] = { 1,0,0,0,0,0,
                               2,3,0,0,0,0,
                               4,5,6        } ;
  short q3[4][3][2] = { { {1}, },
                               { {2,3} },
                               { {4,5}, {6} }, } ;
  char  s[]  = "abc" ;
  char  t[3] = "abc" ;
  char  s2[] = { 'a','b','c','\0' } ;
  char  t2[] = { 'a','b','c' } ;
int main()
{

  printf("********** SCPII35 TEST START **********\n");

  if (x[1] == 3)
    printf(" X  --> O K\n");
  else
    printf(" X  --> N G\n");

  if (y[1][1] == 4)
    printf(" Y  --> O K\n");
  else
    printf(" Y  --> N G\n");

  if (y2[2][2] == 7)
    printf(" Y2 --> O K\n");
  else
    printf(" Y2 --> N G\n");

  if (z[3][0] == 4)
    printf(" Z  --> O K\n");
  else
    printf(" Z  --> N G\n");

  if (w.a[0] == 1)
    printf(" W  --> O K\n");
  else
    printf(" W  --> N G\n");

  if (q[1][0][0] == 2)
    printf(" Q  --> O K\n");
  else
    printf(" Q  --> N G\n");

  if (q2[1][0][0] == 2)
    printf(" Q2 --> O K\n");
  else
    printf(" Q2 --> N G\n");

  if (q3[1][0][0] == 2)
    printf(" Q3 --> O K\n");
  else
    printf(" Q3 --> N G\n");

  if (!strcmp(s,"abc"))
    printf(" S  --> O K\n");
  else
    printf(" S  --> N G\n");

  if (!strncmp(t,"abc",3))
    printf(" T  --> O K\n");
  else
    printf(" T  --> N G\n");

  if (!strcmp(s2,"abc"))
    printf(" S2 --> O K\n");
  else
    printf(" S2 --> N G\n");

  if (!strncmp(t2,"abc",3))
    printf(" T2 --> O K\n");
  else
    printf(" T2 --> N G\n");

  printf("********** SCPII35 TEST  END  **********\n");

exit (0);
}
