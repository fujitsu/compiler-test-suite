subroutine sub(a,b,n,m)
  real*4,dimension(1024,1024)::a,b
  integer::n,m
  integer::i,j
  do j=n,m
     do i=1,1024
        a(i,j) = a(i,j) + b(i,j)
     end do
  end do
end subroutine sub

program main
  real*4,dimension(1024,1024)::a,b
  integer::n,m
  a = 1
  b = 1
  n=1
  m=1
  call sub(a,b,n,m)
  print *,sum(a)
end program main
