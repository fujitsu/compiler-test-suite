subroutine foo(a, b, n)
  real(kind=8),dimension(1000) :: a
  real(kind=8),dimension(2000) :: b
    do i=1,n
       a(i) = a(i) + 3.

       b(i) = b(i) + 4.
    enddo
end subroutine foo

program main
  real(kind=8),dimension(1000) :: a
  real(kind=8),dimension(2000) :: b
  a = 0
  b = 0
  
  call foo(a,b,1000)
  if (all(a == 3)) then
!     print *,"PASS"
  else
     print *,"NG"
  endif
  do i=1,1000
     if (b(i) .ne. 4) then
        print *,"NG"
     endif
  enddo
  print *,"PASS"

end program main
