subroutine sub(a,b,c)
real(kind=4),dimension(1:100) :: a,b,c
do i=1,100
  a(i) = a(i) + b(i)*c(i)
enddo
end subroutine

program main
real(kind=4),dimension(1:100) :: a,b,c
real(kind=4),parameter :: rns = 700._4

a = 1._4
b = 2._4
c = 3._4
call sub(a,b,c)
if (sum(a) == rns) then
  print *,"ok"
else
  print *,"ng", sum(a), " != ", rns
endif
end program
