program main
  parameter(n=30)
  real a(n),b(n),res(n)
  do i=1,n
     a(i) = -1
     b(i) = -0.0
     res(i) = -0.0
     if (mod(i,3) .eq. 0) then
        b(i) = n - i
        res(i) = n - i
     else if (mod(i,3) .eq. 1) then
        b(i) = -n - i
        res(i) = -0.0
     endif
  enddo

  call sub_max(a,b,n)
  do i=1,n
     if (a(i) .ne. res(i)) then
        write(6,*) "ng"
        write(6,1) a
        write(6,1) res
        write(6,1) b
        stop
     endif
  enddo
  write(6,*) "ok"
  1 format(z16)
end program main

subroutine sub_max(a,b,n)
  real a(n),b(n)
  do i=1,n
     a(i) = max(-0.0 , b(i))
  enddo
  return
end subroutine sub_max
