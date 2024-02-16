subroutine sub(a, r, n)
real(kind=8),dimension(1:n) :: a
real(kind=8) r
do i=1,n
  r = max(r, a(i))
enddo
end subroutine

program main
integer,parameter ::n=100
real(kind=8),dimension(1:n) :: a
real(kind=8) r
a = (/(i,i=1,n)/)
r = 5.
call sub(a, r, n)
print *,r
end program
