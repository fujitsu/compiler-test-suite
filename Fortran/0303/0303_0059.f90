subroutine sub(a,b,c,v,n,k)
integer,dimension(1:5,1:5,1:n,1:n) :: a
integer,dimension(1:5,1:n,1:n) :: b
integer,dimension(1:5,1:n,1:n,1:n) :: v
integer :: c,k

      do j = n, 1, -1
         do i = n, 1, -1
            do m = 1, 5
                  b( m, i, j ) = &
                  c * (  a( m, 1, i, j ) * v( 1, i, j, k+1 ) &
                  + a( m, 2, i, j ) * v( 2, i, j, k+1 ) &
                  + a( m, 3, i, j ) * v( 3, i, j, k+1 ) &
                  + a( m, 4, i, j ) * v( 4, i, j, k+1 ) &
                  + a( m, 5, i, j ) * v( 5, i, j, k+1 ) ) 
            end do
         end do
      end do

end subroutine

program main
integer,parameter :: n=20
integer,parameter :: ians=25000
integer,dimension(1:5,1:5,1:n,1:n) :: a
integer,dimension(1:5,1:n,1:n) :: b
integer,dimension(1:5,1:n,1:n,1:n) :: v

a = 1
b = 0
v = 2

call sub(a,b,5,v,10,3)
if (int(sum(b)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(b)), ians
endif
end program

