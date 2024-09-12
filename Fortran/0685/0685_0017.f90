call aaaaa
print *,'pass'
end
subroutine aaaaa
character*8 ch1
character*10 ch2
character*5 ch3
integer     size(8)
integer i
i=8
!$omp parallel shared(i)
call s1(ch1,ch2,ch3,size,i)
!$omp endparallel
end
subroutine s1(ch1,ch2,ch3,size,i)
character(*) ch1,ch2,ch3
integer*4 size(i)
!$omp parallel private(ch1)
  !$omp parallel firstprivate(ch2)
    !$omp parallel shared(ch3)
      !$omp parallel private(size)
      call date_and_time(ch1,ch2,ch3,size)
      !$omp endparallel
   !$omp endparallel
 !$omp endparallel
!$omp endparallel
end
