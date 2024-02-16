subroutine sub(a,n,m)
complex(kind=8),dimension(1:m)::a
do i=1,n
   a(n+1) = a(n+1) + a(i)
enddo
end subroutine

program main
integer,parameter :: m=1000
complex(kind=8),dimension(1:m)::a
a = cmplx(1.0,1.0)
call sub(a,100,m)
print *,a(101)
end program
