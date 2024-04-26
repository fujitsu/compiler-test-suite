program main
  real,dimension(10000) :: b,tmp
  integer :: i
  tmp = 0.0


  do i = 1,10000

     b(i) = i

     if ( mod(i,2) .eq. 0) then
        tmp(i) = b(i)
     end if
     
  end do


  print *,b(1),sum(tmp)
end program main
