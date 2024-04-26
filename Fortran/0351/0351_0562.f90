#define N (1024)
#define M (2)

subroutine init(a,b,L)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,L,c
  c = 0
  u = 1

  do while(u .lt. L) 
     a(u) = 0
     b(u) = u * 1.0
     c = c + 1
     u = u + M
  end do
end subroutine init

subroutine i4(a,b,L)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,L,c
  c = 0
  u = 1
  do while(u .lt. L)
     a(u) = b(u)
     c = c + 1
     u = u + M
  end do
end subroutine i4

program main
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0

  call init(a,b,N)
  call i4(a,b,N)

  u = 1

  do while(u .lt. N)
     if(a(u) .ne. b(u)) then
        c = 1
     endif
     u = u + M
  end do

  if (c.eq.1) then
     print *, "NG"
  else
     print *, "OK"
  endif
end program main
