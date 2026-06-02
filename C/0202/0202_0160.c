
#include<stdio.h>
#include<complex.h>

int num = 2;
int main()
{
  float _Complex cf = 2.0;

  for ( ;num == 0 || cf == (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num == 0 || cf != (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num != 0 || cf == (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num != 0 || cf != (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }

  for ( ;num == 0 && cf == (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num == 0 && cf != (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num != 0 && cf == (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }
  for ( ;num != 0 && cf != (float _Complex)0.0 ; ) {
    printf(" OK 1\n");
    return 0;
  }

  printf(" OK 2\n");
  return 0;
}
