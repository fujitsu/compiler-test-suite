program main
  parameter(n=10)
  real*2 a(n),b(n),res(n)
  do i=1,n
     a(i) = -1.0
     if (i.gt.n/2) then
        b(i) = 0.0
        res(i) = 0.0
     else
        b(i) = -0.0
        res(i) = -0.0
     endif
  enddo

  call sub_max(a,b,n)
  do i=1,n
     if (a(i) .ne. res(i)) then
        write(6,*) "ng"
        stop
     endif
  enddo
  write(6,*) "ok"
  1 format(z16)
end program main

subroutine sub_max(a,b,n)
  real*2 a(n),b(n)
  do i=1,n
     a(i) = max(b(i), -0.0_2)
  enddo
  return
end subroutine sub_max
