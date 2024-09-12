subroutine sub(a,b,c)
real(8),dimension(1:1000,1:1000) :: a,b,c

!$omp parallel
!$omp do
do i=1,1000
 do j=1,1000
   a(j,i) = a(j,i) + b(j,i) +c(j,i)
 enddo
enddo
!$omp end do
!$omp end parallel

end subroutine

program main
integer,parameter :: ians=3000000
integer,parameter :: n=1000
real(8),dimension(1:n,1:n) :: a, b, c

a = 1.
b = 1.
c = 1.

call sub(a,b,c)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
