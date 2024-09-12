subroutine sub(a,i,n)
  real(8),dimension(n,n) :: a
  a(i+1:i+2,1:5) = 1.0
end subroutine sub
print *,'pass'
end
