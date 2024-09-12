subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n,1:n,1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10

do k=1,n
 do j=1,n
  do i=1,n
    a09(i,j,1) = a01(i,j,1) + a02(i,j,1) + a03(i,j,1) + a04(i,j,1) + a05(i,j,1) + a06(i,j,1) + a07(i,j,1) + a08(i,j,1) + a10(i,j,1) + k 
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=2070000
integer,parameter :: n=100
real(8),dimension(1:n,1:n,1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10

a01 = 1.
a02 = 1.
a03 = 1.
a04 = 1.
a05 = 1.
a06 = 1.
a07 = 1.
a08 = 1.
a09 = 1.
a10 = 0.

call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
if (int(sum(a09)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a09)), ians
endif
end program
