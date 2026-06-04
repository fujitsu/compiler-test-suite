!
!
!
!

program main
  !$ use omp_lib
  integer::a=10,tid=0
  !$omp parallel private(tid)
    !$ tid=omp_get_thread_num()
    !$omp task if(mod(tid,2).eq.0) untied default(firstprivate)
      if (a.eq.10) then
        a=a+1
      else
        print *,"NG(1):a=",a
      endif
    !$omp end task
    !$omp taskwait
    if (a.ne.10) then
      print *,"NG(3):a=",a
    end if
  !$omp end parallel

  print *,"pass"
end program main
