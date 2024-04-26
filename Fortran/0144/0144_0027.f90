 module m1
  integer,parameter::n=50
  integer,dimension(n)::c
  type x
   integer,dimension(:),pointer::a
   integer,dimension(:),pointer::b
   integer,dimension(:),pointer::aa
   integer,dimension(:),pointer::ba
  end type
 type(x)::z,y
end
use m1
c=(/(nn,nn=1,n)/)
allocate(z%a(n),z%b(n),z%aa(n),z%ba(n))
allocate(y%a(n),y%b(n),y%aa(n),y%ba(n))
z%a=c
z%b=c
z%aa=c
z%ba=c
y%a=c
y%b=c
y%aa=c
y%ba=c
call s1
call s2
if (any(z%a/=y%a)) print *,101
if (any(z%b/=y%b)) print *,102
if (any(z%aa/=y%aa)) print *,103
if (any(z%ba/=y%ba)) print *,104
   print *,'pass'
end
   subroutine s1
use m1
   forall(i=1:n-1)
     z%a(i+1:1+i)=z%a(i:i)
     z%b(i+1:1+i)=z%b(i:i)
     z%aa(i+1:1+i)=z%aa(i:i)
     z%ba(i+1:1+i)=z%ba(i:i)
   end forall
end
   subroutine s2
use m1
 type(x)::w
allocate(w%a(n),w%b(n),w%aa(n),w%ba(n))
w%a=c
w%b=c
w%aa=c
w%ba=c
   do     i=1,n-1
     w%a(i:i)=y%a(i:i)
   end do
   do     i=1,n-1
     y%a(i+1:1+i)=w%a(i:i)
   end do
   do     i=1,n-1
     w%b(i:i)=y%b(i:i)
   end do
   do     i=1,n-1
     y%b(i+1:1+i)=w%b(i:i)
   end do
   do     i=1,n-1
     w%aa(i:i)=y%aa(i:i)
   end do
   do     i=1,n-1
     y%aa(i+1:1+i)=w%aa(i:i)
   end do
   do     i=1,n-1
     w%ba(i:i)=y%ba(i:i)
   end do
   do     i=1,n-1
     y%ba(i+1:1+i)=w%ba(i:i)
   end do
end
