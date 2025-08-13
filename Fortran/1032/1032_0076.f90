module m1
   integer,dimension(:),pointer::a1
   type x1
     integer,dimension(:),pointer::b1
   end type
   type x2
     integer,dimension(2)::b2
   end type
   type(x2),pointer,dimension(:)::c1
end
use m1
   integer,dimension(:),pointer::a2
   type(x1),dimension(2)::b2
interface
    subroutine sug(b,a)
    use m1
   integer,dimension(:),pointer::a
   type(x1),dimension(2)::b
   end subroutine
end interface
allocate(a1(2))
a1=(/1,2/)
allocate(c1(2))
c1=(/x2((/11,12/)),x2((/13,14/))/)
allocate(a2(2))
a2=(/5,6/)
allocate(b2(1)%b1(2),b2(2)%b1(2))
b2(1)%b1=(/21,22/)
b2(2)%b1=(/23,24/)
call sug(b2,a2)
rewind 19
read(19,*) i1,i2,i3,i4,i5,i6
if (any((/i1,i2,i3,i4,i5,i6/)/=(/5,6,21,22,23,24/)))print *,'error'
print *,'pass'
end

    subroutine sug(b,a)
use m1
   integer,dimension(:),pointer::a
   type(x1),dimension(2)::b
       write(19,*)a,b(1)%b1,b(2)%b1
   end subroutine
