subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
a(i) = a(i) + b(i)
enddo
end subroutine
print *,'pass'
end
