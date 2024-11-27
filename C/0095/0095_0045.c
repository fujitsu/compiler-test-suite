#include <stdio.h>
#if __STDC_VERSION__ + 0 >= 199900L

#include <limits.h>
int main( ) {
  long long int da[ ]={
                        INT_MAX,
                        SHRT_MAX,
                        LLONG_MAX,
                        SCHAR_MAX,
                        SCHAR_MIN,
                        INT_MIN,
                        SHRT_MIN,
                        0,
                        LLONG_MIN 
  };
  long long int db[ ]={
                        LLONG_MAX,
                        SCHAR_MAX,
                        SCHAR_MIN,
                        INT_MIN,
                        SHRT_MIN,
                        LLONG_MIN, 
                        INT_MAX,
                        SHRT_MAX,
                        0 
  };
  const int     n=sizeof da/sizeof da[0];
  int           i,ok=0,ng=0;
  void sort( ),display( );

  sort(da,n);
  sort(db,n);
  for (i=0; i<n-1; i++) {
    if (da[i]==db[i]) ok++;
    else              ng++;
  }
  if (ng) {
    printf(" ng\n");
    display(da,n);
    display(db,n);
  }
  else
    printf(" ok\n");
}
void
sort(long long int data[ ],int n) {
  int i,j;
  void display( );

  for (i=0; i<n-1;i++) {
    for (j=i+1; j<n; j++) {
      if (data[i] > data[j]) {
        long long int work=data[i];
        data[i]=data[j];
        data[j]=work;
      }
    }

  }
}
void display(long long int r[ ],int n) {
  int i;
  for (i=0; i<n; i++)
    printf("%.8x%.8x\n",*(long*)&r[i],*(((long*)&r[i])+1));
}

#else
int main()
{
    printf(" ok\n");
}
#endif
