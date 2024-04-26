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
   forall(i=1:n-11)
     z%a(i+1:11+i)=z%a(i:i+10)
     z%b(i+1:11+i)=z%b(i:i+10)
     z%aa(i+1:11+i)=z%aa(i:i+10)
     z%ba(i+1:11+i)=z%ba(i:i+10)
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
   do     i=1,n-11
     w%a(i:i+10)=y%a(i:i+10)
   end do
   do     i=1,n-11
     y%a(i+1:11+i)=w%a(i:i+10)
   end do
   do     i=1,n-11
     w%b(i:i+10)=y%b(i:i+10)
   end do
   do     i=1,n-11
     y%b(i+1:11+i)=w%b(i:i+10)
   end do
   do     i=1,n-11
     w%aa(i:i+10)=y%aa(i:i+10)
   end do
   do     i=1,n-11
     y%aa(i+1:11+i)=w%aa(i:i+10)
   end do
   do     i=1,n-11
     w%ba(i:i+10)=y%ba(i:i+10)
   end do
   do     i=1,n-11
     y%ba(i+1:11+i)=w%ba(i:i+10)
   end do
end
