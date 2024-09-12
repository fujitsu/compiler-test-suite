subroutine sub(a,b,c,d)
real(8),dimension(1:100) :: a,c
real(8),dimension(1:100,1:100) :: b,d

do k=1,100
 do j=1,100
  do i=1,100
    a(i) = a(i) + b(i,j) + c(i) + d(i,j)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=3000100
real(8),dimension(1:100) :: a,c
real(8),dimension(1:100,1:100) :: b,d

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
