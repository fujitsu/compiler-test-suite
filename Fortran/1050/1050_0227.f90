!
!
!
!

program main
  !$omp parallel
    call sub()
  !$omp end parallel

  print *,"pass"
end program main

subroutine sub
  integer::a=5
  a=10
  !$omp taskwait
  if (a.ne.10) then
    print *,"NG:a=",a
  end if
end subroutine sub
