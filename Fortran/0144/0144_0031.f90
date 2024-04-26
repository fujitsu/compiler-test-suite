 module m1
  integer,parameter::n=50
  type x
   integer,dimension(n)::a
  end type
 type(x)::z,y,xx
end
subroutine ss
use m1
  integer,dimension(:),pointer::c
allocate(c(n),source=[(nn,nn=1,n)])
z%a=c
y%a=c
xx%a=c
call s1
call s2
if (any(z%a/=y%a)) print *,101
if (any(xx%a/=c)) print *,102
end 
do k=1,10
call ss
enddo
   print *,'pass'
end
   subroutine s1
use m1
   forall(i=1:n-1)
     z%a(i+1:n)=z%a(i:n-1)
   end forall
end
   subroutine s2
use m1
 type(x)::w
   do     i=1,n-1
     w%a(i:n-1)=y%a(i:n-1)
   end do
   do     i=1,n-1
     y%a(i+1:n  )=w%a(i:n-1)
   end do
end
