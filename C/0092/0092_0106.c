#include <stdio.h>


float f1,f2,f3,f4,f5,f6,f7,f8,f9,f10 ;
float f11,f12,f13,f14,f15,f16,f17,f18,f19,f20 ;
float f21,f22,f23,f24,f25,f26,f27,f28,f29,f30 ;
float f31,f32,f33,f34,f35,f36,f37,f38,f39,f40 ;
int main() {
int i ;
float result, set() ;

printf(" *****  ***** \n") ;
f1=set(1.0);f2=set(1.0);f3=set(1.0);f4=set(1.0);f5=set(1.0);
f6=set(1.0);f7=set(1.0);f8=set(1.0);f9=set(1.0);f10=set(1.0);
f11=set(1.0);f12=set(1.0);f13=set(1.0);f14=set(1.0);f15=set(1.0);
f16=set(1.0);f17=set(1.0);f18=set(1.0);f19=set(1.0);f20=set(1.0);
f21=set(1.0);f22=set(1.0);f23=set(1.0);f24=set(1.0);f25=set(1.0);
f26=set(1.0);f27=set(1.0);f28=set(1.0);f29=set(1.0);f30=set(1.0);
f31=set(1.0);f32=set(1.0);f33=set(1.0);f34=set(1.0);f35=set(1.0);
f36=set(1.0);f37=set(1.0);f38=set(1.0);f39=set(1.0);f40=set(1.0);

result = f1 + f2 + f3 + f4 + f5 + f6 + f7 + f8 + f9 + f10 +
         f11 + f12 + f13 + f14 + f15 + f16 + f17 + f18 + f19 + f20 +
         f21 + f22 + f23 + f24 + f25 + f26 + f27 + f28 + f29 + f30 +
         f31 + f32 + f33 + f34 + f35 + f36 + f37 + f38 + f39 + f40 ;

if ( result == 80 ) {
	printf(" OK \n") ;
} else {
	printf(" NG  result = %d.0 correct value=80.0 \n",i=result) ;
}

}
float set(a)
float a ;
{
	return(a+a) ;
}
