module mm
contains
subroutine sub(a,i,j)
character*(*) a(:,:,:)
if (any(a(:,:,:)/='abc'))print *,'error-11'
if (any(a/='abc'))print *,'error-21'
if (len(a)/=3)print *,'error-12'
if (any(lbound(a)/=1))print *,'3-1'
if (any(ubound(a)/=3))print *,'4-1'
if (any(shape(a)/=j-i+1))print *,'4-1'
if (    size(a)/=(j-i+1)**3)print *,'4-1'
!$OMP PARALLEL
a(:,:,:j-2)='1234'
if (any(a(:,:,:j-2)/='123'))print *,'error-1'
if (any(a/='123'))print *,'error-21'
if (len(a)/=3)print *,'error-2'
if (any(lbound(a)/=1))print *,'4-1'
if (any(ubound(a)/=3))print *,'4-1'
if (any(shape(a)/=j-i+1))print *,'4-1'
if (    size(a)/=(j-i+1)**3)print *,'4-1'
!$OMP END PARALLEL
if (any(a(:,:,:j-2)/='123'))print *,'error-13'
if (len(a)/=3)print *,'error-14'
end subroutine
end
use mm
integer,parameter::i=3,j=5
character*(3) a(i:j,i:j,i:j)
a='abc'
call sub(a,i,j)
if (any(a/='123'))print *,'error-2'
if (any(lbound(a)/=i))print *,'5-1'
print *,'pass'
end
