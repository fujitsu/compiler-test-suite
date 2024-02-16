#define N 1024

subroutine sub(n,k)
  real(kind=8),dimension(1:N)::k
  real,dimension(1:N)::n

  do i=1,N
     n(i) = 1.0/n(i)
     k(i) = 1.0/k(i)
  end do
end subroutine sub

subroutine sub2(n,m)
  real,dimension(1:N)::n,m

  do i=1,N
     n(i) = 1.0/n(i)
     m(i) = 1.0/m(i)
  end do
end subroutine sub2

subroutine sub3(n,m)
  integer,dimension(1:100)::n,m
  do i=1,N
     n(i) = i/m(i)
  end do
end subroutine sub3

subroutine sub4(n,m)
  real,dimension(1:N)::n
  real(kind=8),dimension(1:N)::m

  do i=1,N
     n(i) = sqrt(n(i))
     m(i) = sqrt(m(i))
  end do
end subroutine sub4


program main
  print *,"OK"
end program main
