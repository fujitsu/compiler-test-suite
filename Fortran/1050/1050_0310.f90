!
!
!
!

subroutine sub
  !$ use omp_lib
  implicit none
  integer::a=0,b=5,c=10,val=0,max=1
  !$omp sections
    !$omp task if(a.eq.0) untied default(none) shared(a,b,c)
      !$omp task if(.false.) untied default(shared) private(b) firstprivate(c)
        !$omp atomic
          a=a+1
          b=100
        if (c.ne.10) then
          print *,"NG-1:c=",c
        end if
      !$omp end task
    !$omp end task
    !$omp section
      !$omp task if(a.eq.0) untied default(none) shared(a,b,c)
        !$omp task if(.true.) untied default(shared) private(c) firstprivate(b)
          !$omp atomic
            a=a+1
          if (b.ne.5) then
            print *,"NG-2:b=",b
          end if
          c=200
        !$omp end task
      !$omp end task
  !$omp end sections

  !$ max = omp_get_max_threads()
  if (max.le.1) then
     val=0
  else
     val=2
  end if

  if (a.ne.val) then
    print *,"NG-3:a=",a
  end if
  if (b.ne.5) then
    print *,"NG-4:b=",b
  end if
  if (c.ne.10) then
    print *,"NG-5:c=",c
  end if
end subroutine sub

program main
  !$omp parallel
    call sub()
  !$omp end parallel

  print *,"pass"
end program main
