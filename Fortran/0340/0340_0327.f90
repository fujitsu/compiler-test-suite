subroutine sub1(a,i,j)
  real,dimension(100) :: a
  integer :: i,j
  real :: tmp1,tmp2,tmp3,tmp4,tmp5,sum

  if (j > 0.0) then
     tmp1 = i+1*5
     tmp2 = i*2*2
     tmp3 = j+1*3
     tmp4 = j*2*2
     tmp5 = i*j
     sum = tmp1+tmp2+tmp3+tmp4+tmp5
     a(j) = 2.0 * sum
  end if
end subroutine sub1

subroutine sub2(a,i,j)
  real,dimension(100) :: a
  integer :: i,j
  real :: tmp1,tmp2,tmp3,tmp4,tmp5,sum

  if (i > 0.0) then
     tmp1 = i+1*5
     tmp2 = i*2*2
     tmp3 = i+1*3
     tmp4 = i*2*2
     tmp5 = i*i
     sum = tmp1+tmp2+tmp3+tmp4+tmp5
     a(i) = 2.0 * sum
  end if
end subroutine sub2

program main
  real,dimension(100) :: b,a
  integer :: i,j
  real :: tmp1,tmp2,tmp3,tmp4,tmp5,sum
  a=2
  b=1

  i=2
  do j=1,100
     b(j) = b(j) +b(j)*1
     b(j) = b(j) +b(j)*2
     b(j) = b(j) +b(j)*3
     b(j) = b(j) +b(j)*4
     b(j) = b(j) +b(j)*5
     b(j) = b(j) +b(j)*6
     if (j > 0.0) then
        tmp1 = i+1*5
        tmp2 = i*2*2
        tmp3 = j+1*3
        tmp4 = j*2*2
        tmp5 = i*j
        sum = tmp1+tmp2+tmp3+tmp4+tmp5
        a(j) = 2.0 * sum *1
     end if

  end do

  print *,b(1),a(1)

  i=2
  a=2
  b=1
  do j=1,100
     b(j) = b(j) +b(j)*1
     b(j) = b(j) +b(j)*2
     b(j) = b(j) +b(j)*3
     b(j) = b(j) +b(j)*4
     b(j) = b(j) +b(j)*5
     b(j) = b(j) +b(j)*6
     call sub1(a,i,j)
  end do

  print *,b(1),a(1)

  i=2
  a=2
  b=1
  do j=1,100
     b(j) = b(j) +b(j)*1
     b(j) = b(j) +b(j)*2
     b(j) = b(j) +b(j)*3
     b(j) = b(j) +b(j)*4
     b(j) = b(j) +b(j)*5
     b(j) = b(j) +b(j)*6
     call sub2(a,i,j)
  end do

  print *,b(1),a(1)

end program main
