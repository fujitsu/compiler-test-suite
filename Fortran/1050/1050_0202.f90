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
  integer::a,i
  !$omp do private(a)
  do i=0,10
    a=i
    !$omp task
      if (a.eq.i) then
        a=a+i
      else
        print *,"NG-1:",i,"a=",a
      end if
    !$omp end task
    !$omp taskwait
    if (a.ne.i) then
      print *,"NG-2:",i,"a=",a
    end if
  end do
  if (a.ne.10) then
    print *,"NG-3:a=",a
  end if
end subroutine sub
