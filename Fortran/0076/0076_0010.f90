module m1
contains
subroutine s(a,b,n,m)
real,dimension(:,:),pointer,contiguous,intent(in) :: a,b

do j=1,n
  do i=1,m
    a(i,j) = a(i,j) + b(i,j)
  enddo
enddo
end
end
use m1
real,dimension(:,:),pointer,contiguous :: a,b
integer,parameter::n=2000,m=3000
allocate( a(m,n), b(m,n) ,source=1.0)
call s(a,b,n,m)
if (sum(a)/=(n*m)*2) print *,301,sum(a),n*m*2
print *,'pass'
end
