program main
  real(8) a(100)
  integer(8) x(100),y(100),b(100)
  real(8) c(2,100)

  call test1(a,100)
  call check_a(a,100)
  call test2(a,100)
  call check_a(a,100)

  x = 1.
  y = 1.
  call test3(a,x,y,100)
  call check_a(a,100)
  call test4(a,x,y,100)
  call check_a(a,100)

  b = (/(i,i=1,100)/)
  call indirect(a,b,100)
  call check_a(a,100)
  call noindirect(a,b,100)
  call check_a(a,100)

  call line(a,100)
  call check_a(a,100)

  call stride(c,100)
  call check_c(c,100)

  call nostride(c,100)
  call check_c(c,100)

  print *, "ok"

end program main

subroutine check_a(a,n)
  real(8) a(n)
  do i=1,n
     if (a(i) .ne. 1.) then
        print *, "ng"
     end if
  end do

end subroutine check_a

subroutine check_c(c,n)
  real(8) c(2,n)
  do i=1,n
     if (c(1,i) .ne. 1.) then
        print *, "ng"
     end if
     if (c(2,i) .ne. 0.) then
        print *, "ng"
     end if
  end do

end subroutine check_c

subroutine test1(a,n)
  real(8) a(n)

  a = 0.

  do i=1,n
     a(i) = 1.
  enddo
end subroutine test1

subroutine test2(a,n)
  real(8) a(n)

  a = 0.
  do i=1,n
     a(i) = 1.
  enddo
end subroutine test2

subroutine test3(a,x,y,n)
  real(8) a(n)
  integer(8) x(n),y(n)

  if (x(1) .eq. y(1)) then 
     a = 0.
  endif

  do i=1,n
     if (x(1) .eq. y(1)) then 
        a(i) = 1.
     endif
  enddo
end subroutine test3

subroutine test4(a,x,y,n)
  real(8) a(n)
  integer(8) x(n),y(n)

  if (x(1) .eq. y(1)) then 
     a = 0.
  endif

  do i=1,n
     if (x(1) .eq. y(1)) then 
        a(i) = 1.
     endif
  enddo
end subroutine test4

subroutine indirect(a,b,n)
  real(8) a(n)
  integer(8) b(n)

  a = 0.

  do i=1,n
     a(b(i)) = 1.
  enddo
end subroutine indirect

subroutine noindirect(a,b,n)
  real(8) a(n)
  integer(8) b(n)

  a = 0.

  do i=1,n
     a(b(i)) = 1.
  enddo
end subroutine noindirect

subroutine line(a,n)
  real(8) a(n)

  a = 0.

  do i=1,n
     a(i) = 1.
  enddo
end subroutine line

subroutine stride(c,n)
  real(8) c(2,n)

  c = 0.

  do i=1,n
     c(1,i) = 1.
  enddo
end subroutine stride

subroutine nostride(c,n)
  real(8) c(2,n)

  c = 0.

  do i=1,n
     c(1,i) = 1.
  enddo
end subroutine nostride
