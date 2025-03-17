subroutine sub()
integer::a(10)=0,b(10,10)=0,n=10

do j=1,n
  do i=1,n
    a(i) = a(i) + b(i,j)
  enddo
enddo
end
print *,'pass'
end
subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
do j=1,n
  do i=1,n
    a(i) = a(i) + b(i,j)
  enddo
enddo
end subroutine
