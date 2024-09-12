subroutine s1(c)
character(*)::c
!$omp task
c='1'
if(c/='1')print *,101
if(len(c)/=2)print *,102
!$omp end task
end
character(2)::c
call s1(c)
print *,'pass'
end
