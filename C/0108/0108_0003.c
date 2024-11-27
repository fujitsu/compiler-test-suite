#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  FILE *fp;
  char *fname = "test.txt";
  fpos_t pos;
  
  fp = fopen( fname, "rb" );
  if( fp == NULL ){
    printf( "OK\n");
    exit(1);
  }

  fseek( fp, 0, SEEK_END );
  fgetpos( fp, &pos );
  printf( "filesize:%d\n", pos );

  fclose( fp );
  return 0;
}
