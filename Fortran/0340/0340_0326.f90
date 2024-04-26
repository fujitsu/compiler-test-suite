subroutine sub(a,b,i,j)
  real,dimension(100) :: a,b
  integer :: i,j
  real :: tmp1,tmp2,tmp3,tmp4,tmp5,sum

  if (b(j) > 0.0) then
     tmp1 = i+1*5
     tmp2 = i*2*2
     tmp3 = j+1*3
     tmp4 = j*2*2
     tmp5 = i*j
     sum = tmp1+tmp2+tmp3+tmp4+tmp5
     a(j) = 2.0 * b(j) + sum
  end if
end subroutine sub

program main
  real,dimension(100) :: b,a
  integer :: i,j
  a=2
  b=1

  i=2
  do j=1,100
     b(j) = b(j) +j
     call sub(a,b,i,j)
  end do

  print *,b(1),a(1)
end program main
