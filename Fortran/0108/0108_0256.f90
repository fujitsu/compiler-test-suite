program main
integer,parameter :: N=1000
integer(kind=4),dimension(1:N) :: a
integer(kind=4) prg
integer i

a = (/(int(i,kind=4),i=1,N)/)
prg = a(1)
do i=1,N
  prg = MAX(prg,a(i))
enddo
print *,prg
end program
