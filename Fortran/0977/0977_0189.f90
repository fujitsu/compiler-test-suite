subroutine s(i,k)
 type x
   integer,pointer::p1(:,:,:),p2(:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3)=reshape((/(i,i=1,27)/),(/3,3,3/))
 integer,target::t2(4,4,4)=reshape((/(i,i=1,64)/),(/4,4,4/))
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2,3,3))
   v(2)%p1=reshape((/(i,i=1,18)/),(/2,3,3/))
   v(2)%p2=>t1(1:3:2,:,:)
  case (2)
   allocate(v(2)%p1(2,3,3),v(2)%p2(2,3,3))
   v(2)%p1=reshape((/(i,i=1,18)/),(/2,3,3/))
   v(2)%p2=reshape((/(i,i=1,18)/),(/2,3,3/))
  case (3)
   allocate(v(2)%p2(2,3,3))
   v(2)%p2=reshape((/(i,i=1,18)/),(/2,3,3/))
   v(2)%p1=>t2(2:4:2,:,:)
  case (4)
   v(2)%p1=>t1(1:3:2,:,:)
   v(2)%p2=>t2(2:4:2,:,:)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1,v(k)%p2,n1,n2,i)+jfoo(v(k)%p1,v(k)%p2,n1,n2,i)
if (j/=i*2)write(6,*) "NG"
deallocate(v)
end
call s(1,2)
call s(2,2)
call s(3,2)
call s(4,2)
print *,'pass'
end
integer function jfoo(i1,i2,n1,n2,i)
integer i1(18),i2(18)
integer,parameter::r(18)=(/1,3,4,6,7,9,10,12,13,15,16,18,19,21,22,24,25,27/)
integer,parameter::s(18)=(/2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36/)

 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (any(i1/=(/(i,i=1,18)/)))write(6,*) "NG"
   if (any(i2/=r             ))write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
 case (2)
   if (any(i1/=(/(i,i=1,18)/)))write(6,*) "NG"
   if (any(i2/=(/(i,i=1,18)/)))write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (3)
   if (any(i1/=s             ))write(6,*) "NG"
   if (any(i2/=(/(i,i=1,18)/)))write(6,*) "NG"
   if (loc(i1)==n1)write(1,*) i,'i1 no copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (4)
   if (any(i1/=r             ))write(6,*) "NG"
   if (any(i2/=s             ))write(6,*) "NG"
   if (loc(i1)==n1)write(1,*) i,'i1 no copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
end select
jfoo=i
end
   

