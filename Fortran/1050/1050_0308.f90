!
!
!
!

program main
  !$ use omp_lib
  integer::a=0,max=1
  !$omp parallel private(a)
    a=10
    !$omp task if(a.eq.0) untied default(shared)
      !$omp atomic
        a=a+1
    !$omp end task
    !$omp taskwait
    if (a.ne.11) then
      print *,"NG:a=",a
    end if
  !$omp end parallel

  !$ max=omp_get_max_threads()
  if (a.ne.0) then
    print *,"NG:max=",max," a=",a
  end if
  print *,"pass"
end program main
