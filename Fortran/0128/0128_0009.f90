subroutine sub(a,b,n)
real(8),dimension(1:2,1:n) :: a,b

do i=1,2
do j=1,n
   a(i,j) = b(i,j)
enddo
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=20
real(8),dimension(1:2,1:n) :: a,b

a = 0.
b = 1.

call sub(a,b,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

