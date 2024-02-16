subroutine sub(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub4(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
   a(i) = b(i)
enddo
end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=40
real(8),dimension(1:n) :: a,b
real(8),dimension(1:n) :: c,d
integer :: res


a = 1.
b = 2.
c = 1.
d = 2.

call sub(a,b,n)
call sub2(a,b,n)
call sub3(c,d,n)
call sub4(c,d,n)

res = int(sum(a)) + int(sum(c))
if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program

