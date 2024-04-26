write(6,*) 'ok'
end	
subroutine sub(a,b,n)
real(8),dimension(1:n,1:n) :: a,b,c
do j=1,n
  do i=1,n
    a(i,j) = a(i,j) + b(i,j)*c(i,j)
  enddo
enddo
end subroutine
