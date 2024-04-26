#include  <stdio.h>
int main()
{
      int   dim[10][10];
      int   i,j;
      int   sum=0;
      for(i=0;i<10;i++)
        for(j=0;j<10;j++,sum++)
          dim[i][j] = sum;
      i=5;j=5;
      
#if __sparcv9 || __x86_64__ || __aarch64__
      if( sizeof(dim) == 400 &&
          sizeof(&dim[0][0]) == 8  &&
          dim[i][j] == 55 ) puts(" OK ");
#elif INT64
      if( sizeof(dim) == 800 &&
          sizeof(&dim[0][0]) == 8  &&
          dim[i][j] == 55 ) puts(" OK ");
#else
      if( sizeof(dim) == 400 &&
          sizeof(&dim[0][0]) == 4  &&
          dim[i][j] == 55 ) puts(" OK ");
#endif
      else                      puts(" NG ");
}
