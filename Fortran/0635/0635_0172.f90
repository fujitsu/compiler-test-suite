program main
  real*8 a(10),b(10,10)
  common /com1/a,b
  m = 1
  do j=1,10
    do i=1,10
      b(i,j) = m
      m = m+1
    enddo
  enddo
  call sub(10)
  print *,a
end

subroutine sub(n)
  real*8 a(10),b(10,10)
  common /com1/a,b
  do j=1,n
    do i=1,n
      a(i)= b(i,j)+i+j
    enddo
  enddo
end
