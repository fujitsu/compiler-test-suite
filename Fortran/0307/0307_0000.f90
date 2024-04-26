subroutine sub_1(a,b,c,d,n,m,xxx)
  real(8),dimension(m) :: a,b,c,d
  integer(8) :: xxx
  do i=1,n
     if (xxx == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_1

subroutine init(xxx)
  integer(8),dimension(10) :: xxx
  xxx = 0
end subroutine init

subroutine sub_2(a,b,c,d,n,m)
  real(8),dimension(m) :: a,b,c,d
  integer(8),dimension(10) :: xxx

  call init(xxx)
  do i=1,n
     if (xxx(5) == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_2

subroutine sub_3(a,b,c,d,n,m,nn)
  real(8),dimension(m) :: a,b,c,d
  integer(8),dimension(nn) :: xxx

  call init(xxx)
  do i=1,n
     if (xxx(5) == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_3

subroutine sub_4(a,b,c,d,n,m,yyy)
  real(8),dimension(m) :: a,b,c,d
  integer(8),dimension(m) :: yyy

  do i=1,n
     if (yyy(5) == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_4

subroutine sub_5(a,b,c,d,n,m,yyy)
  real(8),dimension(m) :: a,b,c,d
  integer(8),dimension(m) :: yyy

  do i=1,n
     if (yyy(5) == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_5

subroutine sub_6(a,b,c,d,n,m,yyy)
  real(8),dimension(m) :: a,b,c,d
  integer(8),dimension(m) :: yyy

  do i=1,n
     if (yyy(5) == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_6

program main
  real(8),dimension(100) :: a,b,c,d
  integer(8) :: xxx
  integer(8),dimension(100) :: yyy

  a = 0.
  b = 1.
  c = 0.
  d = 2.
  yyy = 0
  xxx = 0

  call sub_1(a,b,c,d,0,100,xxx)
  call sub_2(a,b,c,d,0,100)
  call sub_3(a,b,c,d,0,100,10)
  call sub_4(a,b,c,d,0,100,yyy)
  call sub_5(a,b,c,d,0,100,yyy)
  call sub_6(a,b,c,d,0,100,yyy)

  if (int(a(1) + c(1)) .ne. 0) then
     print *,"ng"
  endif
  print *,"ok"
end program main
