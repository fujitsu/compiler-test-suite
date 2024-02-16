program main
integer,parameter :: N=2
integer(kind=8),dimension(1:N) :: a
integer(kind=8) prg
integer i

a = (/(int(i,kind=8),i=1,N)/)
prg = a(1)
do i=1,N
  prg = MAX(prg,a(i))
enddo
print *,prg
end program
