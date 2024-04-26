program main
  real    :: xxx(10,10), yyy(10,10)
  complex :: ans(10,10), zzz(10,10)
  integer*8 :: i,j
  do i=1,10
     do j=1,10
        xxx(j,i) = real(j+i)
        yyy(j,i) = real(j-i)
        ans(j,i) = cmplx(real(j+i),real(j-i))
     end do
  end do
  do i=1,10
     do j=1,10
        zzz(j,i) = ifun(xxx(j,i), yyy(j,i))
     end do
  end do
  do i=1,10
     do j=1,10
        if (ans(j,i) .ne. zzz(j,i)) then
           print *,"NG",j,i,ans(j,i),zzz(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    real    :: i,j
    intent(in) :: i,j
    ia=cmplx(i,j)
  end function ifun
end program main
