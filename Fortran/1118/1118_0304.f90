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
!$omp task shared(i)
call s1(ch1,ch2,ch3,size,i)
!$omp endtask
end
subroutine s1(ch1,ch2,ch3,size,i)
character(*) ch1,ch2,ch3
integer*4 size(i)
!$omp task private(ch1)
  !$omp task firstprivate(ch2)
    !$omp task shared(ch3)
      !$omp task private(size)
      call date_and_time(ch1,ch2,ch3,size)
      !$omp taskwait
      !$omp endtask
   !$omp endtask
 !$omp endtask
!$omp endtask
end
