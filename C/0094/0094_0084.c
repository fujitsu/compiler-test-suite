#include  <stdio.h>
int main() {
short    sa,sb,sc,sd,se   ;
short    sset() , sresult, sfunc() ;
long     ia,ib,ic,id,ie, i   ; 
long     iset() , iresult, ifunc() ;
float    ra,rb,rc,rd,re   ;
float    rset() , rresult, rfunc() ;
double   da,db,dc,dd,de   ;
double   dset() , dresult, dfunc() ;

printf(" *****  ***** \n") ;

sa = sset(1) ;
sb = sset(sa) ;
sc = sset(sb) ;
sd = sset(sc) ;
se = sset(sd) ;

ia = iset(1) ;
ib = iset(ia) ;
ic = iset(ib) ;
id = iset(ic) ;
ie = iset(id) ;

ra = rset(1.0) ;
rb = rset(ra)  ;
rc = rset(rb)  ;
rd = rset(rc)  ;
re = rset(rd)  ;

da = dset(1.0) ;
db = dset(da)  ;
dc = dset(db)  ;
dd = dset(dc)  ;
de = dset(dd)  ;

sresult = sfunc(sa,sb,sc,sd,se,sa,sb,sc,sd,se,sa,sb,sc,sd,se) ;

iresult = ifunc(ia,ib,ic,id,ie,ia,ib,ic,id,ie,ia,ib,ic,id,ie) ;

rresult = rfunc(ra,rb,rc,rd,re,ra,rb,rc,rd,re,ra,rb,rc,rd,re) ;

dresult = dfunc(da,db,dc,dd,de,da,db,dc,dd,de,da,db,dc,dd,de) ;

if( sresult == 156 ) printf(" OK sresult = %d\n",sresult) ;
	else         printf(" NG sresult = %d\n",sresult) ;

if( iresult == 8640) printf(" OK iresult = %d\n",iresult) ;
	else         printf(" NG iresult = %d\n",iresult) ;

if( rresult == 9.0 ) printf(" OK rresult = %d\n",i=rresult);
	else         printf(" NG rresult = %d\n",i=rresult) ;

if( dresult == 290.0) printf(" OK dresult = %d\n",i=dresult);
	else         printf(" NG dresult = %d\n",i=dresult) ;

}
short sset(a)
short a ;
{
	return(a+a) ;
}
long iset(a)
long a ;
{
	return(a+a) ;
}
float rset(a)
float a ;
{
	return(a*a) ;
}
double dset(a)
double a ;
{
	return(a+a) ;
}
short sfunc(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15)
short s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15 ;
{
	short t1,t2,t3 ;

	t1 = s1 + s2 + s3 + s13 + s14 + s15 ;
	s4 = t1 + s6 ;
	s5 = s4 + t1*s7 ;
	if ( s5 > 20 ) s8 = s8 + s9 ;
	s5 = t1 + s4*s5 ;
	for ( t2=s1; t2>20; t2++) {
		s5 += 1 ;
		s11 += 2 ;
		s1 += -1 ;
	}
	t3 = s5 = s10 ;
	s6 = t3++ ;
	return(s6+s8+s4-s11-s1+s5) ;
}
long ifunc(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15)
long i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15 ;
{
	i1 = i2 + i3 ;
	if( i1 > i4 ) {
		i4 = i1 + i2*i3 ;
		i5 = i4 + i6 + i7 + i8 + i9 + i10 ;
		if ( i5 >= i15 ) {
			i14 = i11*i12*13 ;
		} else {
			i14 = i11*i12*13 ;
		}
	} else {
		i2 = i1 + i8 ;
		i3 = i2 + i11 ;
		if ( i2 > 2 ) i2 = i2 + i15 ;
		if ( i3 < 100 ) i2 = i3 * i3 ;
		if ( i2 > i3 ) i3 = i2 + i3 + i11 ;
		i14 = i2 + i3*i6 ;
		if ( i14 > 120 ) i2 = i3 * 14 ;
	}

	return ( i1 + i2 + i4 + i14 ) ;
}
float rfunc(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15)
float r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15 ;
{
	float t1,t2,t3 ;
	long i ;
	i = r1+r6+r14 ;

	switch (i) {
	case 1: return(r15+r14) ;
	case 2:
		r1 = r1 + r6 + r13 ;
		if( r1 < 20.0 ) {
			r8 = r8 + r7 ;
		} else {
			r8 = r1 + r9 ;
		}
		break ;
	default:
		r3 += 1 ;
		r4 += 2 ;
		r5 += 3 ;
		r10 = r3 + r4 + r5 ;
		return(r10) ;
	}

	return(r1+r2+r3+r4+r11+r12+r13+r14+r15) ;
}
double dfunc(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15)
double d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15 ;
{
	while ( d1 < d15 ) {
		d2 = d2 + d8 ;
		d9 += 1.0 ;
		d1 += 1.0 ;
	}
	while ( d1 < (d11+d12+d13) ) {
		d5 = d6+d7-d8 ;
		d1 = d1 + 1 ;
	}
	return(d1+d2+d9-d5) ;
}
