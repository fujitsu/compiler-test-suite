!
!
!
!

program main
  integer::a=10
  !$omp parallel
    call sub(a)
  !$omp end parallel

  print *,"pass"
end program main

subroutine sub(a)
  integer::a
  !$omp task
    if (a.eq.10) then
      a=a+10
    else
      print *,"NG:a=",a
    end if
  !$omp end task
  !$omp taskwait
  if (a.ne.10) then
    print *,"NG:a=",a
  end if
end subroutine sub
