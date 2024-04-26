subroutine sub(a,b,c,n)
  real(8),dimension(1:n,1:n,1:n) :: a,b,c


  do i=1,n
     do j=1,n
        do k=1,n
           a(k,j,i) = b(k,j,i) + c(k,j,i)
        enddo
     enddo
  enddo

end subroutine sub

program main
integer,parameter :: n=20
integer,parameter :: ians=16000
real(8),dimension(1:n,1:n,1:n) :: a,b,c

a = 0.
b = 1.
c = 1.

call sub(a,b,c,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif

end program
