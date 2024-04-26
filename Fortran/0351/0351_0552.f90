#define N (1024)

subroutine init(a,b,end)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,end,c
  c = 0

  do u=1,end
     c = c + 1
     a(u) = 0
     b(u) = u * 1.0
  end do
end subroutine init

subroutine i4(a,b,end)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,end,c
  c = 0
  do u=1,end
     c = c + 1
     a(u) = b(u)
  end do
end subroutine i4

program main
  real(kind=8),dimension(1:N)::a,b
  integer(kind=4)::u,c
  c = 0

  call init(a,b,N)
  call i4(a,b,N)

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
