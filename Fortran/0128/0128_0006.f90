subroutine sub(a,b,n)
real(8),dimension(1:2,1:2,1:2,1:n) :: a,b

do l=1,n
do k=1,2
do j=1,2
do i=1,2
   a(i,j,k,l) = b(i,j,k,l)
enddo
enddo
enddo
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=160
real(8),dimension(1:2,1:2,1:2,1:n) :: a,b

a = 1.
b = 2.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

