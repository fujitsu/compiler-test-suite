subroutine sub01(arg01)
character(*),allocatable :: arg01(:)

allocate(arg01(5))
arg01 = "abcde"
if ( 10 .ne. len(arg01)) print *,'ng1'

!$omp parallel
!$omp do firstprivate(arg01)
do jjj=1,2
  !$omp task
    if ( arg01(jjj) .ne. 'abcde') print *,'ng'
  !$omp end task
enddo
!$omp end do 
!$omp end parallel 
end subroutine

interface
subroutine sub01(arg01)
character(*),allocatable :: arg01(:)
end subroutine
end interface
character(10),allocatable :: cha01(:)
call sub01(cha01)
print *,'ok'
end 
