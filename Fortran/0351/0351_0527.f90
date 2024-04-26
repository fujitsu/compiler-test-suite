subroutine sub01(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c

  do i=1,n
     a(i) = b(i) + c(i)
  enddo
end subroutine sub01

subroutine sub02(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c

  do i=1,n
     a(i) = b(i) + c(i)
  enddo
end subroutine sub02


subroutine sub03(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(i) = b(i) + c(i)
  enddo
end subroutine sub03


subroutine sub04(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c
  do i=1,n
     a(i) = b(i) + c(i)
  enddo
end subroutine sub04

program main
integer,parameter :: n=1000
integer,parameter :: ians=2000
real(8),dimension(1:n) :: a,b,c



a = 0.
b = 1.
c = 1.

call sub01(a,b,c,n)
call sub02(a,b,c,n)
call sub03(a,b,c,n)
call sub04(a,b,c,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

end program
