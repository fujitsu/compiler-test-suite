#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int main()
{
      int     n1,n2,n3,n4,n5,nn,i,j ;
      float   a1[200][8],a2[200][8],a3[200][8],a4[200][8] ;
      float   a5[200][8],a6[200][8],a7[200][8],a8[200][8] ;
      float   b1[300][8],b2[300][8],b3[300][8],b4[300][8] ;
      float   b5[300][8],b6[300][8],b7[300][8],b8[300][8] ;
      float   c1[200][8],c2[200][8],c3[200][8],c4[200][8] ;
      float   c5[200][8],c6[200][8],c7[200][8],c8[200][8] ;
      puts("  test start");
      for(j=0;j<8;j++)
      {
        for(i=0;i<200;i++)
        {
          a1[i][j]=0.;
          a2[i][j]=1.;
          a3[i][j]=2.;
          a4[i][j]=3.;
          a5[i][j]=4.;
          a6[i][j]=5.;
          a7[i][j]=6.;
          a8[i][j]=7.;
          c1[i][j]=0.;
          c2[i][j]=1.;
          c3[i][j]=2.;
          c4[i][j]=3.;
          c5[i][j]=4.;
          c6[i][j]=5.;
          c7[i][j]=6.;
          c8[i][j]=7.;
        }
      }
      for(j=0;j<8;j++)
      {
        for(i=0;i<300;i++)
        {
          b1[i][j]=0.;
          b2[i][j]=1.;
          b3[i][j]=2.;
          b4[i][j]=3.;
          b5[i][j]=4.;
          b6[i][j]=5.;
          b7[i][j]=6.;
          b8[i][j]=7.;
        }
      }
      for(n1=1;n1<3;n1++)
      {
        for(n2=1;n2<4;n2++)
        {
          nn=n2-3 ;
          for(n3=1;n3<5;n3++)
          {
            for(n4=1;n4<4;n4++)
            {
              for(n5=1;n5<3;n5++)
              {
                for(j=0;j<8;j++)
                {
                  for(i=0;i<300;i++)
                    b1[i][j]=b2[i][j]+b3[i][j]+b4[i][j]+
                            b5[i][j]+b6[i][j]+b7[i][j]+b8[i][j] ;
                  for(i=0;i<200;i++)
                    a1[i][j]=a2[i][j]+a3[i][j]+a4[i][j]+
                            a5[i][j]+a6[i][j]+a7[i][j]+a8[i][j] ;
                  for(i=0;i<200;i++)
                    c1[i][j]=c2[i][j]+c3[i][j]+c4[i][j]+
                            c5[i][j]+c6[i][j]+c7[i][j]+c8[i][j] ;
 }
 }
 }
 }
 }
 }
      for(j=0;j<8;j++)
      {
        for(i=0;i<200;i++)
        {

          if((int)a1[i][j] != (int)c1[i][j]) goto lb_990 ;
          if((int)a1[i][j] != (int)b1[i][j]) goto lb_990 ;
          if((int)a1[i][j] != (int)b1[i+100][j]) goto lb_990 ;
        }
      }
lb_999:
      printf("                         \n");
      printf("***** ooooo  k   k  *****\n");
      printf("***** o   o  k  k   *****\n");
      printf("***** o   o  kkk    *****\n");
      printf("***** o   o  k k    *****\n");
      printf("***** ooooo  k   k  *****\n");
      printf("                         \n");
      goto lb_995;
lb_990:
      printf("                         \n");
      printf("***** n nn   ggggg  *****\n");
      printf("***** nn  n  g      *****\n");
      printf("***** n   n  g  gg  *****\n");
      printf("***** n   n  g   g  *****\n");
      printf("***** n   n  ggggg  *****\n");
      printf("                         \n");
lb_995:
      puts("  test ended");
	exit(0);
}
