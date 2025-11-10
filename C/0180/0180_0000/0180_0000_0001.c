#include <stdio.h>
#include "000.h"

extern int fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n );
extern int fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n );
extern int fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n );
extern int fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n );
extern int fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n );
extern int fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n );
				
void initial_arg( seltype_1* arg1, seltype_2* arg2 )				
{				
	int i;			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg1[i] = (seltype_1)( i % 20 );		
		arg1[i] = (seltype_1)( (int)arg1[i] | ( (int)arg1[i] << 8 ) );		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg2[i] = 0;		
	}			
				
	return;			
}				
				
int comp_ary( seltype_2* arg1, seltype_2* arg2 )				
{				
	int i;			
	int comp_result;			
				
	comp_result = 0;			
	for( i = 0; i < ARY_ELM; i++ ){			
		if( arg1[i] == arg2[i] ){		
			comp_result++;	
		}else{		
			comp_result = 0;	
			break;	
		}		
	}			
				
	return comp_result;			
}				
				
int main( void )				
{				
	int r;			
				
	seltype_1 arg1[ARY_ELM];			
	seltype_2 arg2[ARY_ELM];			
	seltype_1 scl_arg1[ARY_ELM];			
	seltype_2 scl_arg2[ARY_ELM];			
	int n_distance;			
	int comp_result;			
	int func_num;			
				
	func_num = 0;			
	r = 0;			
	n_distance = DISTANCE_N;			
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
				
	r = fxtestdsp1( arg2, arg1, n_distance );			
	r = fxtestdsp_scl_1( scl_arg2, scl_arg1, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
				
	r = fxtestdsp2( arg2, arg1, n_distance );			
	r = fxtestdsp_scl_2( scl_arg2, scl_arg1, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
				
	r = fxtestdsp3( arg2, arg1, n_distance );			
	r = fxtestdsp_scl_3( scl_arg2, scl_arg1, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
				
	return (int)r;			
}				
				
