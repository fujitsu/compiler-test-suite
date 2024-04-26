 module m1
  integer,parameter::n=50
  type x
   integer,dimension(:),pointer::a
  end type
 type(x)::z,y,xx
end
subroutine ss
use m1
  integer,dimension(:),pointer::c
allocate(c(n),source=[(nn,nn=1,n)])
allocate(z%a(n))
allocate(y%a(n))
allocate(xx%a(n))
z%a=c
y%a=c
xx%a=c
call s1
call s2
if (any(z%a/=y%a)) print *,101
if (any(xx%a/=c)) print *,102
deallocate(z%a)
deallocate(y%a)
deallocate(xx%a)
end 
do k=1,10
call ss
enddo
   print *,'pass'
end
   subroutine s1
use m1
   forall(i=1:n-1)
     z%a(i+1:1+i)=z%a(i:i)
   end forall
end
   subroutine s2
use m1
 type(x)::w
allocate(w%a(n))
   do     i=1,n-1
     w%a(i:i)=y%a(i:i)
   end do
   do     i=1,n-1
     y%a(i+1:1+i)=w%a(i:i)
   end do
end
