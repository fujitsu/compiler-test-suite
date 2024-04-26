module mod
contains
  elemental function ifun(i,j) result(ia)
    real     :: i,j
    character*3 :: ia
    intent(in)  :: i,j
    if (i .eq. j) then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end module mod

program main
  use mod
  real        :: a(10,10), b(10,10)
  character*3 :: c(10,10)

  do i=1,10
     do j=1,10
        a(j,i) = real(j)
        b(j,i) = real(j)
     end do
  end do
  c = ifun(a,b)
  print *,c(5,5)
end program main
