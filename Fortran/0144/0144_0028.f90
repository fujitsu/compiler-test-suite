 module m1
  logical,parameter::t=.true.,f=.false.
  integer,dimension(4)::c=(/1,20,21,1/)
  type x
   integer,dimension(:),pointer::a
   integer,dimension(:),pointer::b
   integer,dimension(:),pointer::aa
   integer,dimension(:),pointer::ba
  end type
 type(x)::z,y
end
use m1
allocate(z%a(4),z%b(4),z%aa(4),z%ba(4))
allocate(y%a(4),y%b(4),y%aa(4),y%ba(4))
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
   forall(i=1:3)
     z%a(i+1:1+i)=z%a(i:i)
     z%b(i+1:1+i)=z%b(i:i)
     z%aa(i+1:1+i)=z%aa(i:i)
     z%ba(i+1:1+i)=z%ba(i:i)
   end forall
end
   subroutine s2
use m1
 type(x)::w
allocate(w%a(4),w%b(4),w%aa(4),w%ba(4))
w%a=c
w%b=c
w%aa=c
w%ba=c
   do     i=1,3
     w%a(i:i)=y%a(i:i)
   end do
   do     i=1,3
     y%a(i+1:1+i)=w%a(i:i)
   end do
   do     i=1,3
     w%b(i:i)=y%b(i:i)
   end do
   do     i=1,3
     y%b(i+1:1+i)=w%b(i:i)
   end do
   do     i=1,3
     w%aa(i:i)=y%aa(i:i)
   end do
   do     i=1,3
     y%aa(i+1:1+i)=w%aa(i:i)
   end do
   do     i=1,3
     w%ba(i:i)=y%ba(i:i)
   end do
   do     i=1,3
     y%ba(i+1:1+i)=w%ba(i:i)
   end do
end
