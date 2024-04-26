program main
  integer     :: a(10,10), b(10,10)
  character*3 :: c(10,10)
  do i=1,10
     do j =1,10
        a(j,i) = j
        b(j,i) = j
     end do
  end do
  c = ifun(a,b)
  print *,c(5,5)
contains
  elemental function ifun(i,j) result(ia)
    integer     :: i,j
    character*3 :: ia
    intent(in)  :: i,j
    if (i .eq. j) then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end program main
