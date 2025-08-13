subroutine s(i,k)
 type x
   real(8),pointer::p1(:),p2(:)
 end type
 type (x),pointer:: v(:)
 real(8),target::t1(3)=(/(1,1),(2,2),(3,3)/)
 real(8),target::t2(4)=(/(4,4),(5,5),(6,6),(7,7)/)
 pointer(n1,d1)
 pointer(n2,d2)
real(8) j,jfoo
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2))
   v(2)%p1=(/(11,11),(12,12)/)
   v(2)%p2=>t1(1:3:2)
  case (2)
   allocate(v(2)%p1(2),v(2)%p2(2))
   v(2)%p1=(/(111,111),(112,112)/)
   v(2)%p2=(/(113,113),(114,114)/)
  case (3)
   allocate(v(2)%p2(2))
   v(2)%p2=(/(211,211),(212,212)/)
   v(2)%p1=>t2(2:4:2)
  case (4)
   v(2)%p1=>t1(1:3:2)
   v(2)%p2=>t2(2:4:2)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1,v(k)%p2,n1,n2,i)+jfoo(v(k)%p1,v(k)%p2,n1,n2,i)
if (abs(j-i*2)>0.001)write(6,*) "NG"
deallocate(v)
end
call s(1,2)
call s(2,2)
call s(3,2)
call s(4,2)
print *,'pass'
end
real(8) function jfoo(i1,i2,n1,n2,i)
real(8) i1(2),i2(2)
 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (abs(i1(1)-real((11,11)))>0.0001)write(6,*) "NG"
   if (abs(i1(2)-real((12,12)))>0.0001)write(6,*) "NG"
   if (abs(i2(1)-real((1,1)))>0.0001)write(6,*) "NG"
   if (abs(i2(2)-real((3,3)))>0.0001)write(6,*) "NG"
   if (loc(i1)/=n1)write(45,*) i,'i1 copied'
   if (loc(i2)==n2)write(45,*) i,'i2 no copied'
 case (2)
   if (abs(i1(1)-real((111,111)))>0.0001)write(6,*) "NG"
   if (abs(i1(2)-real((112,112)))>0.0001)write(6,*) "NG"
   if (abs(i2(1)-real((113,113)))>0.0001)write(6,*) "NG"
   if (abs(i2(2)-real((114,114)))>0.0001)write(6,*) "NG"
   if (loc(i1)/=n1)write(45,*) i,'i1 copied'
   if (loc(i2)/=n2)write(45,*) i,'i2 copied'
 case (3)
   if (abs(i1(1)-real((5,5)))>0.0001)write(6,*) "NG"
   if (abs(i1(2)-real((7,7)))>0.0001)write(6,*) "NG"
   if (abs(i2(1)-real((211,211)))>0.0001)write(6,*) "NG"
   if (abs(i2(2)-real((212,212)))>0.0001)write(6,*) "NG"
   if (loc(i1)==n1)write(45,*) i,'i1 no copied'
   if (loc(i2)/=n2)write(45,*) i,'i2 copied'
 case (4)
   if (abs(i1(1)-real((1,1)))>0.0001)write(6,*) "NG"
   if (abs(i1(2)-real((3,3)))>0.0001)write(6,*) "NG"
   if (abs(i2(1)-real((5,5)))>0.0001)write(6,*) "NG"
   if (abs(i2(2)-real((7,7)))>0.0001)write(6,*) "NG"
   if (loc(i1)==n1)write(45,*) i,'i1 no copied'
   if (loc(i2)==n2)write(45,*) i,'i2 no copied'
end select
jfoo=i
end
