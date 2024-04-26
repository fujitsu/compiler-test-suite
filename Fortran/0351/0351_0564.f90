#define N (1024)
#define M (1024)

subroutine init(a,b)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0
  u = 1

  do while(u .lt. M) 
     a(u) = 0
     b(u) = u * 1.0
     c = c + 1
     u = u + 1
  end do
end subroutine init

subroutine i4(a,b)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0
  u = 1
  do while(u .lt. M)
     a(u) = b(u)
     c = c + 1
     u = u + 1
  end do
end subroutine i4

program main
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0

  call init(a,b)
  call i4(a,b)

  u = 1

  do while(u .lt. N)
     if(a(u) .ne. b(u)) then
        c = 1
     endif
     u = u + 1
  end do

  if (c.eq.1) then
     print *, "NG"
  else
     print *, "OK"
  endif
end program
