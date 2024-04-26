subroutine sub(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n-50
   a(i) = b(i)
   a(i+20) = b(i+20)
enddo
end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n-50
   a(i) = b(i)
   a(i+40) = b(i+40)
enddo
end subroutine

program main
integer,parameter :: n=200
integer,parameter :: ians=400
real(8),dimension(1:n) :: a,b
integer :: res

a = 1.
b = 2.

call sub(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n)

res = int(sum(a))
if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program
