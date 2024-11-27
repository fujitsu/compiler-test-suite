subroutine s(i,k)
 type x
   integer,pointer::p1(:),p2(:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3)=(/1,2,3/)
 integer,target::t2(4)=(/4,5,6,7/)
integer j(2)
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/11,12/)
   v(2)%p2=>t1(1:3:2)
  case (2)
   allocate(v(2)%p1(2),v(2)%p2(2))
   v(2)%p1=(/111,112/)
   v(2)%p2=(/113,114/)
  case (3)
   allocate(v(2)%p2(2))
   v(2)%p2=(/211,212/)
   v(2)%p1=>t2(2:4:2)
  case (4)
   v(2)%p1=>t1(1:3:2)
   v(2)%p2=>t2(2:4:2)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1,v(k)%p2,n1,n2,i)+jfoo(v(k)%p1,v(k)%p2,n1,n2,i)
if (j(1)/=i*2)write(6,*) "NG"
if (j(2)/=i*2+2)write(6,*) "NG"
deallocate(v)
contains
function jfoo(i1,i2,n1,n2,i)
integer i1(2),i2(2),jfoo(2)
 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (i1(1)/=11)write(6,*) "NG"
   if (i1(2)/=12)write(6,*) "NG"
   if (i2(1)/=1)write(6,*) "NG"
   if (i2(2)/=3)write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
 case (2)
   if (i1(1)/=111)write(6,*) "NG"
   if (i1(2)/=112)write(6,*) "NG"
   if (i2(1)/=113)write(6,*) "NG"
   if (i2(2)/=114)write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (3)
   if (i1(1)/=5)write(6,*) "NG"
   if (i1(2)/=7)write(6,*) "NG"
   if (i2(1)/=211)write(6,*) "NG"
   if (i2(2)/=212)write(6,*) "NG"
   if (loc(i1)==n1)write(1,*) i,'i1 no copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (4)
   if (i1(1)/=1)write(6,*) "NG"
   if (i1(2)/=3)write(6,*) "NG"
   if (i2(1)/=5)write(6,*) "NG"
   if (i2(2)/=7)write(6,*) "NG"
   if (loc(i1)==n1)write(1,*) i,'i1 no copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
end select
jfoo(1)=i
jfoo(2)=i+1
end function
end
call s(1,2)
call s(2,2)
call s(3,2)
call s(4,2)
print *,'pass'
end
   

