program main
  real :: a
  real,dimension(10000) :: b,tmp
  integer :: i
  a=2
  tmp = 0.0


  do i = 1,10000

     b(i) = a

     if ( mod(i,2) .eq. 0) then
        b(i) = tmp(i)
     end if
     
  end do


  print *,b(1)
end program main
