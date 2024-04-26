module mod
  implicit none
  integer,parameter ::  m1 = 100, m2 = 100
  real*8 :: array(m1, m2)
  real*8 :: res(m1-1, m2-1)
  real*8 :: ans(3,3)
  data ans/42723,42732,42741,43623,43632,43641,44523,44532,44541/
end module mod

program main
  use mod
  implicit none
  integer*4 :: i, j
  call init
  do j=2, m2-1
     do i=2, m1-1
        res(i,j) = &
             array(i-1, j-1) + array(i-1, j) + array (i-1, j+1) + &
             array(i  , j-1) + array(i  , j) + array (i  , j+1) + &
             array(i+1, j-1) + array(i+1, j) + array (i+1, j+1)
     end do
  end do
  i = (m2-2)/2
  j = (m1-2)/2
  if ( .not.all (res(i-1:i+1,j-1:j+1) .eq. ans(:,:))) then
  print *, res(i-1, j-1) , res(i  , j-1) , res (i+1, j-1)
  print *, res(i-1, j  ) , res(i  , j  ) , res (i+1, j  )
  print *, res(i-1, j+1) , res(i  , j+1) , res (i+1, j+1)
  else
  print *, "PASS"
  endif
end program

subroutine init
  use mod
  integer*4 :: s, i, j
  s = 0
  do j=1,m2
     do i=1,m1
        array(i,j) = s
        s = s + 1
     end do
  end do
end subroutine init
