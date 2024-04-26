subroutine sub01(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
    a(i) = b(i)
enddo
end subroutine

subroutine sub02(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
    a(i) = b(i)
enddo
end subroutine

subroutine sub03(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
    a(i) = b(i)
enddo
end subroutine

subroutine sub04(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
    a(i) = b(i) + c(i) * d(i)
enddo
end subroutine

subroutine sub05(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
    a(i) = b(i) + c(i) * d(i)
enddo
end subroutine

subroutine sub06(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
    a(i) = b(i) + c(i) * d(i)
enddo
end subroutine

subroutine sub07(a,b,c,d,n)
real(8),dimension(1:n,1:n) :: a,b,c,d
do j=1,n
do i=1,n
    a(i,j) = b(i,j) + c(i,j) * d(i,j)
enddo
enddo
end subroutine

subroutine sub08(a,b,c,d,n)
real(8),dimension(1:n,1:n) :: a,b,c,d
do j=1,n
do i=1,n
    a(i,j) = b(i,j) + c(i,j) * d(i,j)
enddo
enddo
end subroutine

subroutine sub09(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
    a(i) = b(i) + c(i) * d(i)
enddo
end subroutine

subroutine sub10(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
do i=1,n
    a(i) = b(i) + c(i) * d(i)
enddo
end subroutine

subroutine sub11(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
a = b + c * d
end subroutine

subroutine sub12(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d
a = b + c * d
end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians1=20
integer,parameter :: ians2=200
real(8),dimension(1:n) :: a,b,c,d
real(8),dimension(1:n,1:n) :: a2,b2,c2,d2
a = 0.
b = 1.
c = 1.
d = 1.
a2 = 0.
b2 = 1.
c2 = 1.
d2 = 1.

call sub01(a,b,n)
call sub02(a,b,n)
call sub03(a,b,n)
call sub04(a,b,c,d,n)
call sub05(a,b,c,d,n)
call sub06(a,b,c,d,n)
call sub07(a2,b2,c2,d2,n)
call sub08(a2,b2,c2,d2,n)
call sub09(a,b,c,d,n)
call sub10(a,b,c,d,n)
call sub11(a,b,c,d,n)
call sub12(a,b,c,d,n)
if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians1
endif

if (int(sum(a2)) .eq. ians2) then
  print *,"ok"
else
  print *,"ng", int(sum(a2)), ians2
endif

end program
