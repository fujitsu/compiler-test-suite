program main
  real,dimension(10000) :: b,tmp
  integer :: i
  tmp = 2.0


  do i = 1,10000,1
     
     b(i) = tmp(i)

     if ( mod(i,2) .eq. 0) then
        tmp(i) = tmp(i) +1
     end if
     
  end do


  print *,b(1),tmp(1),tmp(2)
end program main
