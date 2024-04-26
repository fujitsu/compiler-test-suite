module data
  type str
     real :: aaa
  end type str
end module data

program main
  real    :: xxx(10), yyy(10)
  complex :: ans(10), zzz(10)
  integer*8 :: i
  do i=1,10
     xxx(i) = real(i)
     yyy(i) = real(i)
     ans(i) = cmplx(i,i)
  end do
  zzz = ifun(xxx, yyy)
  do i=1,10
     if (ans(i) .ne. zzz(i)) then
        print *,"NG",i,ans(i),zzz(i)
        stop
     endif
  end do
  print *,"OK"
contains
  elemental function ifun(i,j) result(ia)
    use data
    complex :: ia
    real    :: i,j
    intent(in) :: i,j
    ia=cmplx(i,j)
  end function ifun
end program main
