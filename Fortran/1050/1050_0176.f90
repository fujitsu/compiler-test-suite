program main
!$ use omp_lib
  integer a,i
  a=0
  !$ call omp_set_schedule(omp_sched_auto, 1)
    !$omp parallel
      !$omp do schedule(runtime)
        do i=1,100
          !$omp atomic
            a=a+1
        end do
    !$omp end parallel
  if (a .ne. 100) print *,"NG : a= ",a
  print *,"pass"
end program main
