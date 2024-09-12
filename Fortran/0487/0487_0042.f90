subroutine s1
complex x
real v
x=(-10,1)
v=0
!$omp atomic capture
v=x%im
x%im=x%im+x%re
!$omp end atomic
if (x%im/=-9) print *,104
if (x%re/=-10) print *,105
if (v/=1) print *,106
end subroutine
call s1
print *,'pass'
end
