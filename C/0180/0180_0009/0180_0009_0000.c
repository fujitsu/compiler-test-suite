#include <stdio.h>
#include "000.h"

extern long fxtestdsp1( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_1(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp2( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_2(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp3( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_3(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp4( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_4(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp5( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_5(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp6( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_6(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp7( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_7(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp8( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_8(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp9( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )            ;
extern long fxtestdsp_scl_9(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )  ;
extern long fxtestdsp10( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )           ;
extern long fxtestdsp_scl_10(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n ) ;
extern long fxtestdsp11( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )           ;
extern long fxtestdsp_scl_11(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n ) ;
extern long fxtestdsp12( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )           ;
extern long fxtestdsp_scl_12(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n ) ;
				
void initial_arg( subscript_type* arg1, seltype_2* arg2 )				
{				
	long i;			
				
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
		arg2[i] = 0;		
	}			
				
	return;			
}				
				
long comp_ary( seltype_2* arg1, seltype_2* arg2 )				
{				
	long i;			
	long comp_result;			
				
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
	long r;			
				
	subscript_type arg1[ARY_ELM];			
	seltype_2 arg2[ARY_ELM];			
	subscript_type scl_arg1[ARY_ELM];			
	seltype_2 scl_arg2[ARY_ELM];			
	subscript_type arg3[ARY_ELM];			
	seltype_2 arg4[ARY_ELM];			
				
	long n_distance;			
	long comp_result;			
	long func_num;			
				
	func_num = 0;			
	r = 0;			
	n_distance = DISTANCE_N;			
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp1( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_1( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp2( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_2( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp3( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_3( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp4( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_4( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp5( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_5( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp6( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_6( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp7( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_7( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp8( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_8( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp9( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_9( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp10( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_10( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp11( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_11( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
	func_num++;			
	initial_arg( arg1, arg2 );			
	initial_arg( scl_arg1, scl_arg2 );			
	initial_arg( arg3, arg4 );			
				
	r = fxtestdsp12( arg2, arg1, arg4, arg3, n_distance );			
	r = fxtestdsp_scl_12( scl_arg2, scl_arg1, arg4, arg3, n_distance );			
		comp_result = comp_ary( arg2, scl_arg2 );		
		if( comp_result == ARY_ELM ){		
			printf("func%d: OK\n", func_num);	
		}else{		
			printf("func%d: NG\n", func_num);	
		}		
				
				
				
	return (int)r;			
}				
				
