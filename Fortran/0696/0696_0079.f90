subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a,b,c

!$omp parallel
!$omp do
do i=1,n
   a(i) = a(i) + b(i) +c(i)
enddo
!$omp end do
!$omp end parallel

end subroutine

program main
integer,parameter :: ians=30000
integer,parameter :: n=10000
real(8),dimension(1:n) :: a, b, c

a = 1.
b = 1.
c = 1.

call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
