program main
  real :: a
  real,dimension(100,100) :: b,tmp
  integer :: i,j,k
  a=2
  b=7
  tmp = 0.0
  k=10

  do j = 1,100
     if (j .eq. 50) then
     do i = 1,100
        if ( k .eq. 10) then
           tmp(i,j) = i
        end if
        b(i,j) = a
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

    end do
  end if
  end do


  print *,sum(b),sum(tmp)
end program main
