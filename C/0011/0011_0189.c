#include  <stdio.h>

int main()
{
  int x[16] ;
  int y[16] = {0} ;

  printf("**** START **** \n") ;

  for (x[0]=1; x[0]<=2; x[0]++)
    {
    for (x[1]=1; x[1]<=2; x[1]++)
      {
      for (x[2]=1; x[2]<=2; x[2]++)
        {
        for (x[3]=1; x[3]<=2; x[3]++)
          {
          for (x[4]=1; x[4]<=2; x[4]++)
            {
            for (x[5]=1; x[5]<=2; x[5]++)
              {
              for (x[6]=1; x[6]<=2; x[6]++)
                {
                for (x[7]=1; x[7]<=2; x[7]++)
                  {
                  for (x[8]=1; x[8]<=2; x[8]++)
                    {
                    for (x[9]=1; x[9]<=2; x[9]++)
                      {
                      for (x[10]=1; x[10]<=2; x[10]++)
                        {
                        for (x[11]=1; x[11]<=2; x[11]++)
                          {
                          for (x[12]=1; x[12]<=2; x[12]++)
                            {
                            for (x[13]=1; x[13]<=2; x[13]++)
                              {
                              for (x[14]=1; x[14]<=2; x[14]++)
                                {
                                for (x[15]=1; x[15]<=2; x[15]++)
                                  {
                                  y[15]++ ;
                                  }
                                y[14]++ ;
                                }
                              y[13]++ ;
                              }
                            y[12]++ ;
                            }
                          y[11]++ ;
                          }
                        y[10]++ ;
                        }
                      y[9]++ ;
                      }
                    y[8]++ ;
                    }
                  y[7]++ ;
                  }
                y[6]++ ;
                }
              y[5]++ ;
              }
            y[4]++ ;
            }
          y[3]++ ;
          }
        y[2]++ ;
        }
      y[1]++ ;
      }
    y[0]++ ;
    }

  if (y[0] == 2)
    printf(" *** 0  O K  *** \n") ;
  else
    {
    printf(" *** 0  N G  *** \n") ;
    printf(" Y=%d \n",y[0]) ;
    }
  if (y[1] == 4)
    printf(" *** 1  O K  *** \n") ;
  else
    {
    printf(" *** 1  N G  *** \n") ;
    printf(" Y=%d \n",y[1]) ;
    }
  if (y[2] == 8)
    printf(" *** 2  O K  *** \n") ;
  else
    {
    printf(" *** 2  N G  *** \n") ;
    printf(" Y=%d \n",y[2]) ;
    }
  if (y[3] == 16)
    printf(" *** 3  O K  *** \n") ;
  else
    {
    printf(" *** 3  N G  *** \n") ;
    printf(" Y=%d \n",y[3]) ;
    }
  if (y[4] == 32)
    printf(" *** 4  O K  *** \n") ;
  else
    {
    printf(" *** 4  N G  *** \n") ;
    printf(" Y=%d \n",y[4]) ;
    }
  if (y[5] == 64)
    printf(" *** 5  O K  *** \n") ;
  else
    {
    printf(" *** 5  N G  *** \n") ;
    printf(" Y=%d \n",y[5]) ;
    }
  if (y[6] == 128)
    printf(" *** 6  O K  *** \n") ;
  else
    {
    printf(" *** 6  N G  *** \n") ;
    printf(" Y=%d \n",y[6]) ;
    }
  if (y[7] == 256)
    printf(" *** 7  O K  *** \n") ;
  else
    {
    printf(" *** 7  N G  *** \n") ;
    printf(" Y=%d \n",y[7]) ;
    }
  if (y[8] == 512)
    printf(" *** 8  O K  *** \n") ;
  else
    {
    printf(" *** 8  N G  *** \n") ;
    printf(" Y=%d \n",y[8]) ;
    }
  if (y[9] == 1024)
    printf(" *** 9  O K  *** \n") ;
  else
    {
    printf(" *** 9  N G  *** \n") ;
    printf(" Y=%d \n",y[9]) ;
    }
  if (y[10] == 2048)
    printf(" *** 10 O K  *** \n") ;
  else
    {
    printf(" *** 10 N G  *** \n") ;
    printf(" Y=%d \n",y[10]) ;
    }
  if (y[11] == 4096)
    printf(" *** 11 O K  *** \n") ;
  else
    {
    printf(" *** 11 N G  *** \n") ;
    printf(" Y=%d \n",y[11]) ;
    }
  if (y[12] == 8192)
    printf(" *** 12 O K  *** \n") ;
  else
    {
    printf(" *** 12 N G  *** \n") ;
    printf(" Y=%d \n",y[12]) ;
    }
  if (y[13] == 16384)
    printf(" *** 13 O K  *** \n") ;
  else
    {
    printf(" *** 13 N G  *** \n") ;
    printf(" Y=%d \n",y[13]) ;
    }
  if (y[14] == 32768)
    printf(" *** 14 O K  *** \n") ;
  else
    {
    printf(" *** 14 N G  *** \n") ;
    printf(" Y=%d \n",y[14]) ;
    }
  if (y[15] == 65536)
    printf(" *** 15 O K  *** \n") ;
  else
    {
    printf(" *** 15 N G  *** \n") ;
    printf(" Y=%d \n",y[15]) ;
    }

  printf("****  E N D  **** \n") ;
}
