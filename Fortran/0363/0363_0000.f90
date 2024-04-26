subroutine sub(a,n,r)
complex*8,dimension(1:n) :: a
complex*8 r
do i=1,n
  r = r + a(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
complex*8,dimension(1:n) :: a
complex*8 r
r = cmplx(0._8,0._8)
a = r
call sub(a,n,r)
print *,r
end program
