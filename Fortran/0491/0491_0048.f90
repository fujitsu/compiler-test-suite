subroutine stencil02(a,x,n1,n2)
  real(8),dimension(n1,n2) :: a,x
  do j=1,n2
     do i=1,n1
        x(i,j) = a(i,j) + a(i-1,j) + a(i,j-1) + a(i+1,j) + a(i,j+1)
     enddo
  enddo
end subroutine stencil02

print *,'pass'
end
