#include <stdio.h>

int main()
{
  int a=0,b,c,d,e,max,i,n;

  for( n=0;n<1000;n++ ){
  max=0;
  for( i=0;i<1001;i++ )
    max = ((a) == (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=0;
    max = ((a) == (i) ? (c = i) : (c = i+i));
  }

  a=0;
  for( i=0;i<1001;i++ )
    max = ((a) == (i) ? (a = i) : (a = i+i));

  for( i=0;i<1001;i++,a++ )
    max = ((a) == (i) ? (a = i) : (a = i+i));

  for( i=0;i<1001;i++ )
    max = ((a) != (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=0;
    max = ((a) != (i) ? (c = i) : (c = i+i));
  }

  a=0;
  for( i=0;i<1001;i++ )
    max = ((a) != (i) ? (a = i) : (a = i+i));

  for( i=0;i<1001;i++,a++ )
    max = ((a) != (i) ? (a = i) : (a = i+i));

  for( i=0;i<1001;i++ )
    max = ((a) > (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) > (i) ? (c = i) : (c = i+i));
  }

  a=1;
  for( i=0;i<1001;i++ )
    max = ((a) > (i) ? (a = i) : (a = i));

  a=1;
  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) > (i) ? (a = i+1) : (a = i+1));
  }

  for( i=0;i<1001;i++ )
    max = ((a) >= (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) >= (i) ? (c = i) : (c = i+i));
  }

  a=1;
  for( i=0;i<1001;i++ )
    max = ((a) >= (i) ? (a = i) : (a = i));

  a=1;
  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) >= (i) ? (a = i+1) : (a = i+1));
  }

  for( i=0;i<1001;i++ )
    max = ((a) < (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) < (i) ? (c = i) : (c = i+i));
  }

  a=1;
  for( i=0;i<1001;i++ )
    max = ((a) < (i) ? (a = i) : (a = i));

  a=1;
  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) < (i) ? (a = i+1) : (a = i+1));
  }

  for( i=0;i<1001;i++ )
    max = ((a) <= (i) ? (c = i) : (c = i+i));

  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) <= (i) ? (c = i) : (c = i+i));
  }

  a=1;
  for( i=0;i<1001;i++ )
    max = ((a) <= (i) ? (a = i) : (a = i));

  a=1;
  for( i=0;i<1001;i++,a++ ){
    if( i==1000 ) a=1;
    max = ((a) <= (i) ? (a = i+1) : (a = i+1));
  }
}
  printf("max = %d\n",max);
}
