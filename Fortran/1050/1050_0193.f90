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
  integer::a
  a=5
  !$omp task
    if (a.eq.5) then
      a=a+10
    else
      print *,"NG-1:a=",a
    end if
  !$omp end task
  !$omp taskwait
  if (a.ne.5) then
    print *,"NG-2:a=",a
  end if
end subroutine sub
