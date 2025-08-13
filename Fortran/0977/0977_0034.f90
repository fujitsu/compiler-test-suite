subroutine s(i,k)
 type y
   integer::p1,p2
 end type
 type x
   type(y),pointer::p1(:,:,:),p2(:,:,:)
 end type
 type (x),pointer:: v(:)
 type(y),target::t1(2,2,3)
 type(y),target::t2(2,2,4)
 pointer(n1,d1)
 pointer(n2,d2)
 t1=reshape((/(y(m,0),m=1,12)/),(/2,2,3/))
 t2=reshape((/(y(m,0),m=1,16)/),(/2,2,4/))
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2,2,2))
   v(2)%p1=reshape((/(y(m,0),m=11,18)/),(/2,2,2/))
   v(2)%p2=>t1(:,:,1:3:2)
  case (2)
   allocate(v(2)%p1(2,2,2),v(2)%p2(2,2,2))
   v(2)%p1=reshape((/(y(m,0),m=111,118)/),(/2,2,2/))
   v(2)%p2=reshape((/(y(m,0),m=113,120)/),(/2,2,2/))
  case (3)
   allocate(v(2)%p2(2,2,2))
   v(2)%p2=reshape((/(y(m,0),m=211,218)/),(/2,2,2/))
   v(2)%p1=>t2(:,:,2:4:2)
  case (4)
   v(2)%p1=>t1(:,:,1:3:2)
   v(2)%p2=>t2(:,:,2:4:2)
end select
n1=loc(v(2)%p1(1,1,1)%p1)
n2=loc(v(2)%p2(1,1,1)%p1)
call jfoo(v(k)%p1%p1,v(k)%p2%p1,n1,n2,i)
if (any(v(2)%p1%p1/=-1))write(6,*) "NG"
if (any(v(2)%p2%p1/=-2))write(6,*) "NG"
deallocate(v)
end
call s(1,2)
call s(2,2)
call s(3,2)
call s(4,2)
print *,'pass'
end
subroutine jfoo(i1,i2,n1,n2,i)
integer i1(8),i2(8)
 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (any(i1/=(/(m,m=11,18)/)))write(6,*) "NG"
   if (any(i2/=(/1,2,3,4,9,10,11,12/)))write(6,*) "NG"
   if (loc(i1)==n1)write(26,*) i,'i1 no copied'
   if (loc(i2)==n2)write(26,*) i,'i2 no copied'
 case (2)
   if (any(i1/=(/(m,m=111,118)/)))write(6,*) "NG"
   if (any(i2/=(/(m,m=113,120)/)))write(6,*) "NG"
   if (loc(i1)==n1)write(26,*) i,'i1 no copied'
   if (loc(i2)==n2)write(26,*) i,'i2 no copied'
 case (3)
   if (any(i1/=(/5,6,7,8,13,14,15,16/)))write(6,*) "NG"
   if (any(i2/=(/(m,m=211,218)/)))write(6,*) "NG"
   if (loc(i1)==n1)write(26,*) i,'i1 no copied'
   if (loc(i2)==n2)write(26,*) i,'i2 no copied'
 case (4)
   if (any(i1/=(/1,2,3,4,9,10,11,12/)))write(6,*) "NG"
   if (any(i2/=(/5,6,7,8,13,14,15,16/)))write(6,*) "NG"
   if (loc(i1)==n1)write(26,*) i,'i1 no copied'
   if (loc(i2)==n2)write(26,*) i,'i2 no copied'
end select
i1=-1
i2=-2
end
