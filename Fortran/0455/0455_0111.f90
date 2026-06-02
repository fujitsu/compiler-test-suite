subroutine s1
integer x
x=1
!$omp atomic capture
v=x
x=max(0,1)
!$omp end atomic
if (x/=1) print *,101
end subroutine
call s1
print *,'pass'
end

