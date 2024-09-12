program main
integer,parameter :: N=500
integer,dimension(1:N,1:N) :: a,b
a=reshape((/(i,i=1,N*N)/),(/N,N/))
b=1
call sub(a,b,N)
print *,sum(b)
end program

subroutine sub(a,b,N)
integer,dimension(1:N,1:N) :: a,b
do k=1,2000
  do j=1,N
    do i=1,N
       if (mod(a(i,j),2) .eq. 0) then
         b(i,j) = k
       endif
    enddo
  enddo
enddo
end subroutine
