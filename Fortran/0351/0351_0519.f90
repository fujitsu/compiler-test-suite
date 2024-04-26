subroutine sub1(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,n
     a(i) = b(i) + c(i)
  enddo

end subroutine sub1

subroutine sub2(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,n
     a(i) = b(i) + c(i)
  enddo

end subroutine sub2

subroutine sub3(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,n
     a(i) = b(i) + c(i)
  enddo

end subroutine sub3

subroutine sub4(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,n
     a(i) = b(i) + c(i)
  enddo

end subroutine sub4

program main
integer,parameter :: n=1000
integer,parameter :: ians=2000
real(8),dimension(1:n) :: a,b,c

a = 0.
b = 1.
c = 1.

call sub1(a,b,c,n)
call sub2(a,b,c,n)
call sub3(a,b,c,n)
call sub4(a,b,c,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

end program
