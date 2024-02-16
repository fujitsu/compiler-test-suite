subroutine sub(a,r,n)
complex(kind=8),dimension(1:n)::a
complex(kind=8) r
r = 0.
do i=1,n
   r = r + a(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
complex(kind=8),dimension(1:n)::a
complex(kind=8) r
a = cmplx(1.0,1.0)
call sub(a,r,n)
print *,r
end program
