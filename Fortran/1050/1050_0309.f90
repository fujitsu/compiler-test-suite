!
!
!
!

program main
  !$ use omp_lib
  integer:: a=0,b=0,i,tid=0
  !$omp parallel
    !$omp do
    do i=1,10
      !$omp task if(.true.) untied default(shared) private(tid)
        !$ tid=omp_get_thread_num()
        !$omp task if(mod(tid,2).eq.0) untied default(none) shared(a) firstprivate(tid) private(b)
          !$omp atomic
            a=a+1
          b=tid
        !$omp end task
      !$omp end task
    end do
  !$omp end parallel

  if (a.ne.10.or.b.ne.0.or.tid.ne.0) then
     print *,"NG:a=",a," b=",b," tid=",tid
  end if
  print *,"pass"
end program main
