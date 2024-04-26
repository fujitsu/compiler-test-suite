module mod
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    real    :: i,j
    intent(in) :: i,j
    ia=cmplx(i,j)
  end function ifun
end module mod

program main
  use mod
  real    :: xxx(10), yyy(10)
  complex :: ans(10), zzz(10)
  integer*8 :: i
  do i=1,10
     xxx(i) = real(i)
     yyy(i) = real(i)
     ans(i) = cmplx(real(i),real(i))
  end do
  do i=1,10
     zzz(i) = ifun(xxx(i), yyy(i))
  end do
  do i=1,10
     if (ans(i) .ne. zzz(i)) then
        print *,"NG",i,ans(i),zzz(i)
        stop
     endif
  end do
  print *,"OK"
end program main
