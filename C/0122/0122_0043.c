#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int fmt1, fmt2, j_fmt;
int a01,a02; 
int test_array1[100];
int test_array2[100];
int test_array3[100];
int test_array4[100];
int test_array5[100];
int test_array6[100];
int test_array7[100];
int test_array8[100];
int test_array9[100];
int test_array10[100];
static void insert_pos_test();
int main()
{
  a01 = a02 = 1;
  insert_pos_test();
  if( a01 == 3 && a02 == 1 )
     printf("006 test ==>OK \n");
  else
     printf("006 test ==>NG \n");
exit (0);
}

static void insert_pos_test()
{
 int i,j;
 
 for(i=1; i < 100; i++)
   {
    test_array1[i] = 0;
    test_array2[i] = 0;
   }
 for(i=1; i < 100 ; i++ )
   {     
     test_array1[i]+= a01 + a02;
     test_array2[i]+= a02 - a01;
   } 
 for(i=1; i < 50; i++)
   {
    test_array3[i] = 0;
    test_array4[i] = 0;
   }
 for(i=1; i < 50 ; i++ )
   {     
     test_array3[i]+= a01 + a02;
     test_array4[i]+= a02 - a01;
   } 
 for(i=1; i < 60; i++)
   {
    test_array5[i] = 0;
    test_array6[i] = 0;
   }
 for(i=1; i < 60 ; i++ )
   {     
     test_array5[i]+= a01 + a02;
     test_array6[i]+= a02 - a01;
   } 
 for(i=1; i < 70; i++)
   {
    test_array7[i] = 0;
    test_array8[i] = 0;
   }
 for(i=1; i < 70 ; i++ )
   {     
     test_array7[i]+= a01 + a02;
     test_array8[i]+= a02 - a01;
   } 
 for(i=1; i < 80; i++)
   {
    test_array9[i] = 0;
    test_array10[i] = 0;
   }
 for(i=1; i < 70 ; i++ )
   {     
     test_array9[i]+= a01 + a02;
     test_array10[i]+= a02 - a01;
   } 

    j = 1;
    a01 = a01 * 10 + 2;
    goto L_switch;
L_LOOP0:
    j = 2;
    j_fmt = j ;
    a01 = a01 * 100 + 3;
    goto L_switch;
L_LOOP1:
    j = 1;
    j_fmt = j ;
    a01 = a01 * 100 + 3;
    goto L_switch;
L_LOOP2:
    goto L_EXIT;
L_switch:
    j++;
    a01 = a02 + 1;
    switch ((int)j) {
      case 1:  goto L_LOOP1 ;
      case 2:  goto L_switch;
      default: goto L_LOOP2 ; 
    }
L_EXIT:

  if ( a01 == 0 )
    goto L_switch2;
  
LOOP_head:
  a01 = test_array1[1];
  a02 = test_array2[2]; 
  j = a01 + a02 -1;
  goto  L_switch2;
LOOP_head1:
  a01 = test_array1[2];
  a02 = test_array2[3];
  j= a01 + a02 -1;
  goto L_EXIT2;
L_switch2:
  j = j + 1;
  switch((int)j){
    case 1:  goto LOOP_head;
    case 2:  goto L_switch2;  	
    default: goto LOOP_head1;
  }    
L_EXIT2:
   a01 = a01 +1;  
   a02 = a02 +1;  
}
