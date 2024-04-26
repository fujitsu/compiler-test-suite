j=-1
call aaa(j)
call bbb(j)
call ccc(j)
print *,'pass'
contains
subroutine aaa(j)
integer,value,optional::j
!$omp atomic write
i=+j
if(i/=-1) print *,'err'
!$omp atomic write
i=-j
if(i/=1) print *,'err'
end subroutine
subroutine bbb(j)
integer,intent(in)::j
!$omp atomic write
i=+j
!$omp end atomic
if(i/=-1) print *,'err'
!$omp atomic write
i=-j
!$omp end atomic
if(i/=1) print *,'err'
end subroutine
subroutine ccc(j)
integer,intent(in)::j
!$omp atomic write
i=+(j)
!$omp end atomic
if(i/=-1) print *,'err'
!$omp atomic write
i=-((j))
!$omp end atomic
if(i/=1) print *,'err'
end subroutine
end
