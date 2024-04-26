subroutine sub(a,b,n)
  real*8 a(n),b(n)

  do i=1,n
     if (a(i) > 0.0) then
        b(i) = a(i)
     endif
  enddo
end subroutine sub

program main
  real*8 a(100),b(100)

  a = 1
  call sub(a,b,100)

  print *,sum(b)
end program
