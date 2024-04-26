#define N (1024_8)

subroutine init(a,b,M)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=8)::u,M,c
  c = 0

  do u=1,M
     c = c + 1
     a(u) = 0
     b(u) = u * 1.0
  end do
end subroutine init

subroutine i8(a,b,M)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=8)::u,M,c
  c = 0
  do u=1,M
     c = c + 1
     a(u) = b(u)
  end do
end subroutine i8

program main
  real(kind=8),dimension(1:N)::a,b
  integer(kind=8)::u,c
  c = 0

  call init(a,b,N)
  call i8(a,b,N)


  do u=1,N
     if(a(u) .ne. b(u)) then
        c = 1
     endif
  end do
  if (c.eq.1) then
     print *, "NG"
  else
     print *, "OK"
  endif
end program main
