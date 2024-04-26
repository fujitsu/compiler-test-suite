call aaa
call bbb
call ccc
print *,'pass'
contains
subroutine aaa
j=-1
!$omp atomic write
i=+j
if(i/=-1) print *,'err'
!$omp atomic write
i=-j
if(i/=1) print *,'err'
end subroutine
subroutine bbb
j=-1
!$omp atomic write
i=+j
!$omp end atomic
if(i/=-1) print *,'err'
!$omp atomic write
i=-j
!$omp end atomic
if(i/=1) print *,'err'
end subroutine
subroutine ccc
j=-1
!$omp atomic write
i=+(j)
!$omp end atomic
if(i/=-1) print *,'err'
!$omp atomic write
i=-(j)
!$omp end atomic
if(i/=1) print *,'err'
end subroutine
end
