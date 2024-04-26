#define N (1024)

subroutine init(a,b,start)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,start,c
  c = 0
  u = start

  do while(u .gt. 1) 
     a(u) = 0
     b(u) = u * 1.0
     c = c + 1
     u = u - 1
  end do
end subroutine init

subroutine i4(a,b,start)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,start,c
  c = 0
  u = start
  do while(u .gt. 1)
     a(u) = b(u)
     c = c + 1
     u = u - 1
  end do
end subroutine i4

program main
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0

  call init(a,b,N)
  call i4(a,b,N)

  u = N

  do while(u .gt. 1)
     if(a(u) .ne. b(u)) then
        c = 1
     endif
     u = u - 1

  end do

  if (c.eq.1) then
     print *, "NG"
  else
     print *, "OK"
  endif
end program main
