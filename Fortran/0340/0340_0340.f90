program main
  real,dimension(100) :: a,b,c
  integer :: j,k
  k=1
  a=2
  b=1
  c=3


  do j=1,100
     b(j) = 1+j
     b(j) = b(j)*2
     b(j) = b(j)+1
     b(j) = b(j)/2
     b(j) = b(j)-2
     b(j) = b(j)+b(j)

     if (k > 0.0) then
        tmp1 = j+1*5
        tmp2 = j*2*2
        tmp3 = j+j*3
        tmp4 = j*2*2
        tmp5 = j*j
        sum = tmp1+tmp2+tmp3+tmp4+tmp5
        c(j) = 2.0 * c(j) + sum
     end if

     a(j) = a(j)*2
     a(j) = a(j)+1
     a(j) = a(j)/2
     a(j) = a(j)-2
     a(j) = a(j)+a(j)
  end do

  print *,b(1),a(1)
end program main
