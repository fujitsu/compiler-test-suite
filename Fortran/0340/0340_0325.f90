subroutine sub(a,b,j,cond)
  real,dimension(100,100) :: a,b
  integer :: j,cond
  real :: tmp1,tmp2,tmp3,tmp4,tmp5,sum

  do i=1,100
     b(i,j) = b(i,j) +j
     if (cond > 0.0) then
        tmp1 = i+1*5
        tmp2 = i*2*2
        tmp3 = j+1*3
        tmp4 = j*2*2
        tmp5 = i*j
        sum = tmp1+tmp2+tmp3+tmp4+tmp5
        a(i,j) = 2.0 * b(i,j) + sum
     end if
  end do
end subroutine sub

program main
  real,dimension(100,100) :: b,a
  integer :: j,k
  a=2
  b=1
  k=10

  do j=1,100
     call sub(a,b,j,k)
  end do

  print *,b(1,1),a(1,1)
end program main
