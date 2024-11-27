#include <stdio.h>

static void copy_data();
static void swap();
static int  check_data();
static void eval_test();
int main()
{
   int   result1[10]     = {111,2,3,4,5,6,7,8,9,10 }; 
   int   result[10]      = {1,2,3,4,5,6,7,8,9,10 }; 
   int   data[10]        = {2,5,3,7,9,1,10,8,4,6 }; 
   int   a[10]           = {1,2,3,4,5,6,7,8,9,10 }; 
   int   sort_data[10];
   int   i,j;

   copy_data(&data[0], &sort_data[0]);

   for(i=0;i < 10; i++ ){ 
     for(j=i; j < 10; j++ ){ 
        if( sort_data[i] > sort_data[j] )
          swap(&sort_data[i], &sort_data[j] );
     }
   }
   if( check_data(&sort_data[0],&result[0]) )
      printf( "NG \n" );

   eval_test( &a[0],&sort_data[0], &result[0] );
  
   if( check_data(&a[0],&result1[0]) )
      printf( "NG \n" );

   else
      printf( "OK \n" );

}
static void copy_data(a,b)
int  *a,*b;
{
   int i;
   for( i=0; i < 10; i++ )
      *b++ = *a++;
}

static void swap(a,b)
int *a,*b;
{
    int temp;
 
    temp = *a;
    *a   = *b;
    *b   = temp;
}

static int check_data(a,b)
int *a,*b;
{
  int i;

  for(i=1; i <= 10; i++ ){
    if( *a++ != *b++ ){
       return 1;
    }
  }
  return 0;
}

static void eval_test(a,b,c)
int *a,*b,*c;
{
  int i;
  for( i=1; i <= 10; i++ ){
   *a += (*b++) + (*c++);
  }
}
