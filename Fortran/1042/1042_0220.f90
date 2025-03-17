module mm
integer,volatile:: ii=1,j=2
end
use mm,jj=>j
equivalence (i,j,k)
equivalence (j,n,m)
volatile k
i=1
if (i/=1)write(6,*) "NG"
if (k/=1)write(6,*) "NG"
if (m/=1)write(6,*) "NG"
if (ii/=1)write(6,*) "NG"
if (jj/=2)write(6,*) "NG"
print *,'pass'
end
