subroutine sub(a,i,j)
character*(*) a(i:j,i:j,i:j)
if (any(a/='abc'))print *,'error-11'
if (len(a)/=3)print *,'error-12'
if (any(lbound(a)/=i))print *,'3-1'
if (any(ubound(a)/=j))print *,'3-2'
if (any(shape(a)/=j-i+1))print *,'3-4'
if (   size(a)/=(j-i+1)**3)print *,'3-5'
!$OMP PARALLEL PRIVATE(a)
a='1234'
if (any(a/='123'))print *,'error-1'
if (len(a)/=3)print *,'error-2'
if (any(lbound(a)/=i))print *,'4-1'
if (any(ubound(a)/=j))print *,'4-2'
if (any(shape(a)/=j-i+1))print *,'4-4'
if (   size(a)/=(j-i+1)**3)print *,'4-5'
!$OMP END PARALLEL
if (any(a/='abc'))print *,'error-13'
if (len(a)/=3)print *,'error-14'
end
integer,parameter::i=3,j=5
character*(3) a(i:j,i:j,i:j)
a='abc'
call sub(a,i,j)
if (any(a/='abc'))print *,'error-2'
if (any(lbound(a)/=i))print *,'5-1'
if (any(ubound(a)/=j))print *,'5-2'
if (any(shape(a)/=j-i+1))print *,'5-4'
if (   size(a)/=(j-i+1)**3)print *,'5-5'
print *,'pass'
end
