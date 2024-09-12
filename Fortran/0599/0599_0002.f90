!$omp parallel default(none)
call sub( (/(i,i=1,2)/))
!$omp end parallel
print *,'pass'
end
subroutine sub(k)
integer k(2)
if (any(k/=(/(i,i=1,2)/))) print *,101
end
