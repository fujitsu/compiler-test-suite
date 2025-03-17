subroutine foo(n)
real a(n),b(n,n)
b=0
do j=1,n
 do i=1,n
   a(i) = a(i) + b(i,j)
 enddo
enddo
print *,a
end
print *,'pass'
end
