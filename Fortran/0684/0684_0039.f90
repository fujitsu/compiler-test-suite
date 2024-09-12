subroutine sub(a)
character*(*) a
!$OMP PARALLEL PRIVATE(a)
a='1234'
if (a/='123')print *,'error-1'
if (len(a)/=3)print *,'error-2'
!$OMP END PARALLEL
if (a/='abc')print *,'error-11'
if (len(a)/=3)print *,'error-12'
end
character*(3) a
a='abc'
call sub(a)
if (a/='abc')print *,'error-2'
print *,'pass'
end
