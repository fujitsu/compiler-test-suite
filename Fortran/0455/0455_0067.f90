subroutine s1
integer x,v
x=1
v=0
!$omp atomic capture
v=x
x=1
!$omp end atomic
if (x/=1) print *,104
if (v/=1) print *,105
end subroutine
call s1
print *,'pass'
end

