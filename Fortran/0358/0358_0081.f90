program main
  parameter(n=10)
  real a(n),b(n),res(n)
  do i=1,n
     a(i) = -1.0
     if (i.gt.n/2) then
        b(i) = 0.0
     else
        b(i) = -0.0
     endif
     res(i) = 2
  enddo

  call sub_max(a,b,n)

  do i=1,n
     if (a(i) .ne. res(i)) then
        write(6,*) "ng"
        write(6,*) a
        write(6,1) b
        stop
     endif
  enddo
  write(6,*) "ok"
  1 format(z20)
end program main

subroutine sub_max(a,b,n)
  real a(n),b(n)
  do i=1,n
     if (b(i) .lt. -0.0) then
        a(i) = 1
     else
        a(i) = 2
     endif
  enddo
  return
end subroutine sub_max
