subroutine sub1(a,b,n,m)
real,dimension(1:n) :: a,b

do i=1,n
   do j=1,m
      a(i) = b(i) + 10.0;
      b(10) = 10.0;
   end do
end do
end subroutine

program main
  real,dimension(1:100) :: a,b
  a=1.0
  b=2.0
  call sub1(a,b,100,100)
end program main
