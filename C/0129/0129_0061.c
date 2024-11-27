#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main() {
long     ia,ib,ic,id,ie   ; 
long     iset() , iresult, ifunc() ;

printf(" ***** creg0003 ***** \n") ;

ia = iset(1) ;
ib = iset(ia) ;
ic = iset(ib) ;
id = iset(ic) ;
ie = iset(id) ;

iresult = ifunc(ia,ib,ic,id,ie,ia,ib,ic,id,ie,ia,ib,ic,id,ie, 
                ia,ib,ic,id,ie) ;

if( iresult == 277054) printf(" OK iresult = %d\n",iresult) ;
	else         printf(" NG iresult = %d\n",iresult) ;
exit (0);
}
long iset(a)
long a ;
{
	return(a+a) ;
}
long ifunc(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,
           i11,i12,i13,i14,i15,i16,i17,i18,i19,i20) 
long i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20 ;
{
	long i100,i101,iset(),ip() ;
	long w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20 ;

	i1 = i1 + i2 + i3 ;
	i2 = i1 + 1  + i2 ;
	i3 = i3 + i4 ;
	i4 = i3 + i5 ;
	i5 = i4 - 1 ;
	i6 = i5-i5 + i7 ;
	i7 = i1 + i2 ;
	i8 = i7 + i8 ;
	i9 = i9 + i10 ;
	i10 = i10 + i9 ;
	i11 = i10 - i8 ;
	i12 = i12 - i10 ;
	i13 = i13 - i14 ;
	i14 = i12 - i11 ;
	i15 = i15 + i1  ;
	i16 = i15 + i14 ;
	i17 = i17 + i6 ;
	i18 = i2 + i9 ;
	i19 = i5 + i10 ;
	i20 = i19 + i18 ;

	if( i1 > i4 ) ip() ;

label1 : i100 = i1 + i2 + i3 - i4 + i5 + i6 - i7 + i8 - i9 + i10 + i11 - i12 + i13 - i14 + i15 + i16 - i17 + i18 + i19 - i20 ;

label2 : w1 = i100*2  ;
	w2 = w1 + 2 ;
	w3 = w1 + w2 ;
	w4 = w3 + w2 ;
	w5 = w2 + w4 ;
	w6 = w5 - w2 ;
	w7 = w6 + w5 ;
	w8 = w1 + w4 ;
	w9 = w3 + w7 ;
	w10 = w9 + w5 ;
	w11 = w10 + w8 ;
	w12 = w11 + w8 ;
	w13 = w12 - w9 ;
	w14 = w13 + w11 ;
	w15 = w14 + w7 ;
	w16 = w15 + w9 ;
	w17 = w16 + w11 ;
	w18 = w17 + w11 ;
	w19 = w12 + w18 ;
	w20 = w3 + w19 + w16 ;

	i101 = i100 + w1 + w2 + w3 + w4 - w5 - w6 + w7 + w8 + w9 + w10 + w11 + w12 + w13 - w14 - w15 - w16 -w17 + w18 + w19 + w20 ;

	return(i101*2) ;

}
long ip()
{
}
