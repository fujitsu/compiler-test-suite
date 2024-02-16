subroutine sub(a1,a2,a3,a4,a5,a6,n)
real(8),dimension(1:n,1:n) :: a1,a2,a3,a4,a5,a6
do k=1,n
  do j=1,n
    do i=1,n
      a1(i,j) = a1(i,j) + a2(i,k)*a3(k,i) + a4(k,j)*a5(j,k) + a6(j,i)
    enddo
  enddo
enddo
end subroutine
program main
integer,parameter :: n=100
integer,parameter :: ians=1061100
real(8),dimension(1:n,1:n) :: a1,a2,a3,a4,a5,a6
a1 = 0.1
a2 = 0.2
a3 = 0.3
a4 = 0.01
a5 = 0.01
a6 = 1.0
call sub(a1,a2,a3,a4,a5,a6,n)
if (int(sum(a1)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a1)), ians
endif
end program
