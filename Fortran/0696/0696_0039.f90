subroutine sub(a,b,e,x,n)
real(8),dimension(1:n) :: e
real(8),dimension(1:n,1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b
logical,dimension(1:n) :: x

do k=1,100
 do j=1,100
  do i=1,100
    b(i,j,k) = b(i,j,k) + e(i)
    if (x(i)) then
      b(i,j,k) = b(i,j,k) + a(i,j)
    endif
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=2500000
logical,dimension(1:n) :: x
real(8),dimension(1:n) :: e
real(8),dimension(1:n,1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b

a = 1.
b = 1.
e = 1.
x(1:50) = .false.
x(51:100) = .true.
call sub(a,b,e,x,n)

if (int(sum(b)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(b)), ians
endif
end program
