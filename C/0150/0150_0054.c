#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static int   arr[5] ={1,2,3,4,5};
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   y  = 1;
  x1 = (arr+1)[y];
  if(x1 == 3)
    printf("*** M3EMEB06-01 *** O   K ***\n");
  else
    printf("*** M3EMEB06-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  x2 = (arr+1)[1];
  if(x2 == 3)
    printf("*** M3EMEB06-02 *** O   K ***\n");
  else
    printf("*** M3EMEB06-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = (arr+1)[2/2];
  if(x3 == 3)
    printf("*** M3EMEB06-03 *** O   K ***\n");
  else
    printf("*** M3EMEB06-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = (arr+1)[1*1];
  if(x4 == 3)
    printf("*** M3EMEB06-04 *** O   K ***\n");
  else
    printf("*** M3EMEB06-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = (arr+1)[3%2];
  if(x5 == 3)
    printf("*** M3EMEB06-05 *** O   K ***\n");
  else
    printf("*** M3EMEB06-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = (arr+1)[1+1];
  if(x6 == 4)
    printf("*** M3EMEB06-06 *** O   K ***\n");
  else
    printf("*** M3EMEB06-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  x7 = (arr+1)[2-1];
  if(x7 == 3)
    printf("*** M3EMEB06-07 *** O   K ***\n");
  else
    printf("*** M3EMEB06-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  x8 = (arr+1)[1&1];
  if(x8 == 3)
    printf("*** M3EMEB06-08 *** O   K ***\n");
  else
    printf("*** M3EMEB06-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = (arr+1)[1|0];
  if(x9 == 3)
    printf("*** M3EMEB06-09 *** O   K ***\n");
  else
    printf("*** M3EMEB06-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  x0 = (arr+1)[1^0];
  if(x0 == 3)
    printf("*** M3EMEB06-10 *** O   K ***\n");
  else
    printf("*** M3EMEB06-10 *** N   G ***\n");
  }
  printf("*** M3EMEB06 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
