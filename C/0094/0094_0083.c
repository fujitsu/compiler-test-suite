#include  <stdio.h>
int main() {
short    sa,sb,sc,sd,se   ;
short    sset() , sresult ;
long     ia,ib,ic,id,ie, i; 
long     iset() , iresult ;
float    ra,rb,rc,rd,re   ;
float    rset() , rresult ;
double   da,db,dc,dd,de   ;
double   dset() , dresult ;

printf(" *****  ***** \n") ;

sa = 1 ;
sb = sset(sa) ;
sc = sset(sb) ;

ia = 1 ;
ib = iset(ia) ;
ic = iset(ib) ;

ra = 1.0      ;
rb = rset(ra) ;
rc = rset(rb) ;

da = 1.0      ;
db = dset(da) ;
dc = dset(db) ;

if ( sb > sc ) {
	sa = sb + sc ;
	sb = sa - 1  ;
	ra = rb ;
	rc = ra + ra*rb ;
	if ( db < da ) {
		da = dc * 5.0 ;
		dc = db - da  ;
	}
	else
	{
		ia = ib + ic ;
		ib = ia - ic ;
		ia = ib - ia ;
	}

} else {
	da = da + db + dc ;
	da = da + db * dc ;
	da = da - db - dc ;
	db = db + dc      ;
	if ( db > da ) {
		da = dc * 5.0 ;
		dc = db - da  ;
	}
	else
	{
		ia = ib + ic ;
		ia = ia + ib ;
		ib = ia - ic ;
		ia = ib - ia ;
		ic = ia + ib ;
		ib = ic + ia ;
	}
}

sresult = sa + sb + sc ;
iresult = ia + ib + ic ;
rresult = ra + rb + rc ;
dresult = da + db + dc ;

if( sresult == 7   ) printf(" OK sresult = %d\n",sresult) ;
	else         printf(" NG sresult = %d\n",sresult) ;

if( iresult == -8  ) printf(" OK iresult = %d\n",iresult) ;
	else         printf(" NG iresult = %d\n",iresult) ;

if( rresult == 3.0 ) printf(" OK rresult = %d\n",i=rresult);
	else         printf(" NG rresult = %d\n",i=rresult) ;

if( dresult == 19.0) printf(" OK dresult = %d\n",i=dresult);
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
