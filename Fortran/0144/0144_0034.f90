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
allocate(z%a(4),source=c)
allocate(z%b(4),source=c)
allocate(z%aa(4),source=c)
allocate(z%ba(4),source=c)
allocate(y%a(4),source=c)
allocate(y%b(4),source=c)
allocate(y%aa(4),source=c)
allocate(y%ba(4),source=c)
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
   forall(i=2:4)
     z%a(i:i)=z%a(i-1:i-1)
     z%b(i:i)=z%b(i-1:i-1)
     z%aa(i:i)=z%aa(i-1:i-1)
     z%ba(i:i)=z%ba(i-1:i-1)
   end forall
end
   subroutine s2
use m1
 type(x)::w
allocate(w%a(4),source=c)
allocate(w%b(4),source=c)
allocate(w%aa(4),source=c)
allocate(w%ba(4),source=c)
   do     i=2,4
     w%a(i:i)=y%a(i-1:i-1)
   end do
   do     i=2,4
     y%a(i:i)=w%a(i:i)
   end do
   do     i=2,4
     w%b(i:i)=y%b(i-1:i-1)
   end do
   do     i=2,4
     y%b(i:i)=w%b(i:i)
   end do
   do     i=2,4
     w%aa(i:i)=y%aa(i-1:i-1)
   end do
   do     i=2,4
     y%aa(i:i)=w%aa(i:i)
   end do
   do     i=2,4
     w%ba(i:i)=y%ba(i-1:i-1)
   end do
   do     i=2,4
     y%ba(i:i)=w%ba(i:i)
   end do
end
