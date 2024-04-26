module mod
contains
  subroutine sub(xx)
    real(kind=8) xx
    do i=1,10
       xx = xx + 1.0
    end do
  end subroutine sub
end module mod

#line 5
program mm
  use mod
  real(kind=8) xx

  xx = 5.0
  call sub(xx)

  if ( xx .eq. 15.0) then
     call sub(xx)
     if (xx .eq. 25.0) then
        print *,"OK"
        stop
     endif
  endif
  print *, "NG"
end program mm
