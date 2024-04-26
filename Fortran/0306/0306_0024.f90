program main
  integer(4),dimension(1:1) :: a,x,y
  
  a = 0
  x = 0
  y = 1

  call sub(a,x,y,1)

end program main

subroutine sub(a, x, y, n)
  integer(4) :: i,N1
  integer(4),dimension(1:n) :: a,x,y

  N1 = 0
  do i=1,n
     goto 3
2    continue
     a(i) = a(i) + N1
3    continue
     N1 = 2
     if (x(i) == 0) then
        x(i) = 1
        goto 2
     endif

     N1 = -2
     if (y(i) == 0) then
        y(i) = 1
        goto 2
     endif
  enddo

  if (a(1) .ne. 2) then
     print *, "NG"
     print *, " a  =", a(1)
     print *, " N1 =", N1
  endif

  print *, "OK"

end subroutine sub
