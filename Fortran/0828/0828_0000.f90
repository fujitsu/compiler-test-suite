call s1
print *,'pass'
contains
subroutine s1
complex,allocatable::i(:)
allocate(i(2))
i=0
!$omp taskloop reduction(+:i)
do k=1,1
!$omp task
i=i+(1,1)
if(i(1)/=(1,1)) print *,'err1'
!$omp end task
!$omp taskwait
enddo
!$omp endtaskloop

if(allocated(i)) deallocate(i)
allocate(i(2))
i=0
!$omp taskloop reduction(+:i)
do k=1,1
!$omp task
i=i+(1,1)
if(i(1)/=(1,1)) print *,'err2'
!$omp end task
!$omp taskwait
enddo
!$omp endtaskloop
end subroutine
end
