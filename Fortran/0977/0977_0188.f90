module m1
 type xx
   character(3)::z
 end type
 type x
   type(xx),pointer::p1(:),p2(:)
 end type
interface operator(/=)
module procedure xxhk
end interface
contains
function xxhk(x1,x2)
type(xx),intent(in)::x1
character(*),intent(in)::x2
logical xxhk
xxhk=x1%z/=x2
end function
end
subroutine s(i,k)
use m1
 type (x),pointer:: v(:)
 character(3),target::tt1(3)
 character(3),target::tt2(4)
 type(xx),target::t1(3),t2(4)
 pointer(n1,d1)
 pointer(n2,d2)
character(6)::j,jj*3,jfoo*3
 t1=(/xx('001'),xx('002'),xx('003')/)
 t2=(/xx('004'),xx('005'),xx('006'),xx('007')/)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/xx('011'),xx('012')/)
   v(2)%p2=>t1(1:3:2)
  case (2)
   allocate(v(2)%p1(2),v(2)%p2(2))
   v(2)%p1=(/xx('111'),xx('112')/)
   v(2)%p2=(/xx('113'),xx('114')/)
  case (3)
   allocate(v(2)%p2(2))
   v(2)%p2=(/xx('211'),xx('212')/)
   v(2)%p1=>t2(2:4:2)
  case (4)
   v(2)%p1=>t1(1:3:2)
   v(2)%p2=>t2(2:4:2)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1,v(k)%p2,n1,n2,i)//jfoo(v(k)%p1,v(k)%p2,n1,n2,i)
write(jj,'(i3.3)')i
if (j/=jj//jj)write(6,*) "NG"
deallocate(v)
end
call s(1,2)
call s(2,2)
call s(3,2)
call s(4,2)
print *,'pass'
end
character(3) function jfoo(i1,i2,n1,n2,i)
use m1
type(xx):: i1(2),i2(2)
 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (i1(1)/='011')write(6,*) "NG"
   if (i1(2)/='012')write(6,*) "NG"
   if (i2(1)/='001')write(6,*) "NG"
   if (i2(2)/='003')write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 no copied'
 case (2)
   if (i1(1)/='111')write(6,*) "NG"
   if (i1(2)/='112')write(6,*) "NG"
   if (i2(1)/='113')write(6,*) "NG"
   if (i2(2)/='114')write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (3)
   if (i1(1)/='005')write(6,*) "NG"
   if (i1(2)/='007')write(6,*) "NG"
   if (i2(1)/='211')write(6,*) "NG"
   if (i2(2)/='212')write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 no copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (4)
   if (i1(1)/='001')write(6,*) "NG"
   if (i1(2)/='003')write(6,*) "NG"
   if (i2(1)/='005')write(6,*) "NG"
   if (i2(2)/='007')write(6,*) "NG"
   if (loc(i1)==n1)write(1,*) i,'i1 no copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
end select
write(jfoo,'(i3.3)')i
end
   

