#include <stdio.h>
#include "000.h"

extern int fxtestdsp1( double*   p, long*   q, double*   r, double*   s, seltype_distance n );
extern int fxtestdsp_scl_1( double*   p, long*   q, double*   r, double*   s, seltype_distance n );
extern int fxtestdsp2( double*   p, long*   q, double*   r, double*   s, seltype_distance n );
extern int fxtestdsp_scl_2( double*   p, long*   q, double*   r, double*   s, seltype_distance n );
extern int fxtestdsp3( long*   p, long*   q, long*   r, long*   s, seltype_distance n );
extern int fxtestdsp_scl_3( long*   p, long*   q, long*   r, long*   s, seltype_distance n );
extern int fxtestdsp4( long*   p, long*   q, long*   r, long*   s, seltype_distance n );
extern int fxtestdsp_scl_4( long*   p, long*   q, long*   r, long*   s, seltype_distance n );
extern int fxtestdsp5( int*   p, long*   q, int*   r, int*   s, seltype_distance n );
extern int fxtestdsp_scl_5( int*   p, long*   q, int*   r, int*   s, seltype_distance n );
extern int fxtestdsp6( int*   p, long*   q, int*   r, int*   s, seltype_distance n );
extern int fxtestdsp_scl_6( int*   p, long*   q, int*   r, int*   s, seltype_distance n );

void initial_arg_r8( subscript_type* arg1, double* arg2, double* arg3, double* arg4 )				
{				
	int i;			
				
	arg1[0] = 9;			
	arg1[1] = 6;			
	arg1[2] = 1;			
	arg1[3] = 8;			
	arg1[4] = 5;			
	arg1[5] = 7;			
	arg1[6] = 0;			
	arg1[7] = 3;			
	arg1[8] = 4;			
	arg1[9] = 2;			
	for( i = 10; i < ARY_ELM; i++ ){			
		arg1[i] = arg1[i%10];		
		arg1[i] += 10 * ( i / 10 );		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg2[i] = i;
		arg3[i] = i*2;
		arg4[i] = i*3;
	}			
				
	return;			
}				


void initial_arg_i8( subscript_type* arg1, long* arg2, long* arg3, long* arg4 )				
{				
	int i;			
				
	arg1[0] = 9;			
	arg1[1] = 6;			
	arg1[2] = 1;			
	arg1[3] = 8;			
	arg1[4] = 5;			
	arg1[5] = 7;			
	arg1[6] = 0;			
	arg1[7] = 3;			
	arg1[8] = 4;			
	arg1[9] = 2;			
	for( i = 10; i < ARY_ELM; i++ ){			
		arg1[i] = arg1[i%10];		
		arg1[i] += 10 * ( i / 10 );		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg2[i] = i;		
		arg3[i] = i*2;
		arg4[i] = i*3;
	}			
				
	return;			
}				


void initial_arg_i4( subscript_type* arg1, int* arg2, int* arg3, int* arg4 )				
{				
	int i;			
				
	arg1[0] = 9;			
	arg1[1] = 6;			
	arg1[2] = 1;			
	arg1[3] = 8;			
	arg1[4] = 5;			
	arg1[5] = 7;			
	arg1[6] = 0;			
	arg1[7] = 3;			
	arg1[8] = 4;			
	arg1[9] = 2;			
	for( i = 10; i < ARY_ELM; i++ ){			
		arg1[i] = arg1[i%10];		
		arg1[i] += 10 * ( i / 10 );		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg2[i] = i;		
		arg3[i] = i*2;
		arg4[i] = i*3;
	}			
				
	return;			
}				
				
				
int main( void )				
{				
	int r;			
				
	subscript_type arg1[ARY_ELM];			
	subscript_type scl_arg1[ARY_ELM];			

	double r8_arg2[ARY_ELM];			
	double r8_scl_arg2[ARY_ELM];			
	double r8_arg3[ARY_ELM];			
	double r8_scl_arg3[ARY_ELM];			
	double r8_arg4[ARY_ELM];			
	double r8_scl_arg4[ARY_ELM];			
	
	long i8_arg2[ARY_ELM];			
	long i8_scl_arg2[ARY_ELM];			
	long i8_arg3[ARY_ELM];			
	long i8_scl_arg3[ARY_ELM];			
	long i8_arg4[ARY_ELM];			
	long i8_scl_arg4[ARY_ELM];			

	int i4_arg2[ARY_ELM];			
	int i4_scl_arg2[ARY_ELM];			
	int i4_arg3[ARY_ELM];			
	int i4_scl_arg3[ARY_ELM];			
	int i4_arg4[ARY_ELM];			
	int i4_scl_arg4[ARY_ELM];			
				
	int n_distance;			
	int comp_result;			
	int func_num;			
	int i;
				
	func_num = 0;			
	r = 0;			
	n_distance = DISTANCE_N;			
				
	func_num++;			
	initial_arg_r8( arg1, r8_arg2, r8_arg3, r8_arg4 );			
	initial_arg_r8( scl_arg1, r8_scl_arg2, r8_scl_arg3, r8_scl_arg4 );			
				
	r = fxtestdsp1( r8_arg2, arg1, r8_arg3, r8_arg4, n_distance );			
	r = fxtestdsp_scl_1( r8_scl_arg2, scl_arg1, r8_scl_arg3, r8_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( r8_arg3[i] == r8_scl_arg3[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		


	func_num++;			
	initial_arg_r8( arg1, r8_arg2, r8_arg3, r8_arg4 );			
	initial_arg_r8( scl_arg1, r8_scl_arg2, r8_scl_arg3, r8_scl_arg4 );			
				
	r = fxtestdsp2( r8_arg2, arg1, r8_arg3, r8_arg4, n_distance );			
	r = fxtestdsp_scl_2( r8_scl_arg2, scl_arg1, r8_scl_arg3, r8_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( r8_arg2[i] == r8_scl_arg2[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		


	func_num++;			
	initial_arg_i8( arg1, i8_arg2, i8_arg3, i8_arg4 );			
	initial_arg_i8( scl_arg1, i8_scl_arg2, i8_scl_arg3, i8_scl_arg4 );			
				
	r = fxtestdsp3( i8_arg2, arg1, i8_arg3, i8_arg4, n_distance );			
	r = fxtestdsp_scl_3( i8_scl_arg2, scl_arg1, i8_scl_arg3, i8_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( i8_arg3[i] == i8_scl_arg3[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		


	func_num++;			
	initial_arg_i8( arg1, i8_arg2, i8_arg3, i8_arg4 );			
	initial_arg_i8( scl_arg1, i8_scl_arg2, i8_scl_arg3, i8_scl_arg4 );			
				
	r = fxtestdsp4( i8_arg2, arg1, i8_arg3, i8_arg4, n_distance );			
	r = fxtestdsp_scl_4( i8_scl_arg2, scl_arg1, i8_scl_arg3, i8_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( i8_arg2[i] == i8_scl_arg2[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		


	func_num++;			
	initial_arg_i4( arg1, i4_arg2, i4_arg3, i4_arg4 );			
	initial_arg_i4( scl_arg1, i4_scl_arg2, i4_scl_arg3, i4_scl_arg4 );			
				
	r = fxtestdsp5( i4_arg2, arg1, i4_arg3, i4_arg4, n_distance );			
	r = fxtestdsp_scl_5( i4_scl_arg2, scl_arg1, i4_scl_arg3, i4_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( i4_arg3[i] == i4_scl_arg3[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		


	func_num++;			
	initial_arg_i4( arg1, i4_arg2, i4_arg3, i4_arg4 );			
	initial_arg_i4( scl_arg1, i4_scl_arg2, i4_scl_arg3, i4_scl_arg4 );			
				
	r = fxtestdsp6( i4_arg2, arg1, i4_arg3, i4_arg4, n_distance );			
	r = fxtestdsp_scl_6( i4_scl_arg2, scl_arg1, i4_scl_arg3, i4_scl_arg4, n_distance );			
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
	  if( i4_arg2[i] == i4_scl_arg2[i] ){		
	    comp_result++;	
	  }else{		
	    break;	
	  }		
	}			
	if( comp_result == ARY_ELM ){		
	  printf("func%d: OK\n", func_num);	
	}else{		
	  printf("func%d: NG\n", func_num);	
	}		

				
	return (int)r;			
}				
				
