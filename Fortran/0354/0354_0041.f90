module mod
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
end module mod

program main
  use mod
  integer     :: a(10), b(10)
  character*3 :: c(10)
  
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b=(/1,2,3,4,5,6,7,8,9,10/)
  c = ifun(a,b)
  print *,c(5)
end program main
