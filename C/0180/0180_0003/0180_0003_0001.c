#include <stdio.h>
#include "000.h"

extern int fxtestdsp1( seltype_2**   p, seltype_1**   q, seltype_distance n );
extern int fxtestdsp_scl_1(  seltype_2** scl_p, seltype_1** scl_q, seltype_distance n );
				
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
				
void initial_ary_subscript( seltype_1** arg1, seltype_2** arg2 )				
{				
	int i;			
	int sub_arg1[ARY_ELM];			
	int sub_arg2[ARY_ELM];			
				
	sub_arg1[0] = 9;			
	sub_arg1[1] = 6;			
	sub_arg1[2] = 1;			
	sub_arg1[3] = 8;			
	sub_arg1[4] = 5;			
	sub_arg1[5] = 7;			
	sub_arg1[6] = 0;			
	sub_arg1[7] = 3;			
	sub_arg1[8] = 4;			
	sub_arg1[9] = 2;			
	for( i = 10; i < ARY_ELM; i++ ){			
		sub_arg1[i] = sub_arg1[i%10];		
		sub_arg1[i] += 10 * ( i / 10 );		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		sub_arg2[i] = i;		
	}			
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg1[i] = arg1[i] + sub_arg1[i];		
		arg2[i] = arg2[i] + sub_arg2[i];		
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
	int i;			
				
	seltype_1 arg1_q[ARY_ELM];			
	seltype_2 arg2_p[ARY_ELM];			
	seltype_1* arg1_pointer_q[ARY_ELM];			
	seltype_2* arg2_pointer_p[ARY_ELM];			
				
	seltype_1 scl_arg1_q[ARY_ELM];			
	seltype_2 scl_arg2_p[ARY_ELM];			
	seltype_1* scl_arg1_pointer_q[ARY_ELM];			
	seltype_2* scl_arg2_pointer_p[ARY_ELM];			
				
	int n_distance;			
	int comp_result;			
	int func_num;			
				
	func_num = 0;			
	r = 0;			
	n_distance = DISTANCE_N;			
				
				
	for( i = 0; i < ARY_ELM; i++ ){			
		arg1_pointer_q[i] = arg1_q;		
		arg2_pointer_p[i] = arg2_p;		
		scl_arg1_pointer_q[i] = scl_arg1_q;		
		scl_arg2_pointer_p[i] = scl_arg2_p;		
	}			
				
	initial_ary_subscript( arg1_pointer_q, arg2_pointer_p );			
	initial_ary_subscript( scl_arg1_pointer_q, scl_arg2_pointer_p );			
				
	func_num++;			
	initial_arg( arg1_q, arg2_p );			
	initial_arg( scl_arg1_q, scl_arg2_p );			
				
	r = fxtestdsp1( arg2_pointer_p, arg1_pointer_q, n_distance );			
	r = fxtestdsp_scl_1( scl_arg2_pointer_p, scl_arg1_pointer_q, n_distance );			
		comp_result = comp_ary( arg2_p, scl_arg2_p );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
				
	return (int)r;			
}				
				
