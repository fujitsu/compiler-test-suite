program main
  integer :: a(10,10)
  integer :: b(10,10)
  complex :: c(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = i
        b(j,i) = j
     end do
  end do
  c = ifun(a,b)
  if ((real(c(5,5)) .eq. 5) .and. (aimag(c(5,5)) .eq. 5)) then
     print *,"OK"
  else
     print *,"NG",c(5,5)
  endif
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    integer :: i,j
    intent(in) :: i,j
    ia=cmplx(real(i),real(j))
  end function ifun
end program main
