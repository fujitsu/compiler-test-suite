subroutine sub(a,b,c,a2,b2,c2,n)
  real(8),dimension(1:n,1:n) :: a,b,c
  real(8),dimension(1:n,1:n) :: a2,b2,c2

  do i=1,n
     do j=1,n
        a(j,i) = b(j,i) + c(i,j)

        a2(j,i) = b2(j,i) + c2(i,j)
     enddo
  enddo

end subroutine sub

program main
integer,parameter :: n=10
integer,parameter :: ians=200
integer,parameter :: ians2=200
real(8),dimension(1:n,1:n) :: a,b,c
real(8),dimension(1:n,1:n) :: a2,b2,c2

a = 0.
b = 1.
c = 1.
a2 = 0.
b2 = 1.
c2 = 1.

call sub(a,b,c,a2,b2,c2,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

if (int(sum(a2)) .eq. ians2) then
  print *,"ok"
else
  print *,"ng", int(sum(a2)), ians
endif

end program
