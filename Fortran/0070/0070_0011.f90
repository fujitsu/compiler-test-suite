subroutine sub(a,m,n)
real(4),dimension(100) :: a,m
do concurrent(i=1:n, m(i).ne.0)
   a(i) = 1
enddo
end

program main
real(4),dimension(100) :: a,m
a = 0
m = 1
call sub(a,m,100)
call sub(a,m,0) 
print *,'pass'
end program main


