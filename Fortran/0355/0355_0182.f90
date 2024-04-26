subroutine sub(a,b,n)
  integer::n,i
  real(kind=4)::a(n),b(n),r
  real(kind=8)::s
  s = 0
  do i=1, n
     r = a(i) + b(i)
     s = s + r
  end do
  print *, s
end subroutine sub

subroutine init(a,b,n)
  integer::n,i
  real(kind=4)::a(n),b(n)
  do i=1, n
     a(i) = 1
     b(i) = 1
  end do
end subroutine init
program main
  integer,parameter::n = 13
  real(kind=4)::a(n),b(n)
  call init(a,b,n)
  call sub(a,b,n)
end program main
