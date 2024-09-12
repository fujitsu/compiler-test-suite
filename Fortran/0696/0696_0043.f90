subroutine sub(a,b,c,d)
real(8),dimension(1:100) :: a,d
real(8),dimension(1:100,1:100) :: b,c

do j=1,100
  do i=1,100
    a(i) = a(i) + b(i,j)
  enddo
  do k=1,100
    d(k) = d(k) + c(k,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: ians=10100
real(8),dimension(1:100) :: a,d
real(8),dimension(1:100,1:100) :: b,c

a = 1.
b = 1.
c = 1.
d = 1.
call sub(a,b,c,d)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
