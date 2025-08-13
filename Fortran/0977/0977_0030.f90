subroutine s(i,k)
 type x
   integer,pointer::p1(:,:,:),p2(:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(2,3,2)=reshape((/(m,m=1,12)/),(/2,3,2/))
 integer,target::t2(2,4,2)=reshape((/(m,m=1,16)/),(/2,4,2/))
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 select case(i)
  case (1)
   allocate(v(2)%p1(2,2,2))
   v(2)%p1=reshape((/(m,m=11,18)/),(/2,2,2/))
   v(2)%p2=>t1(:,1:3:2,:)
  case (2)
   allocate(v(2)%p1(2,2,2),v(2)%p2(2,2,2))
   v(2)%p1=reshape((/(m,m=111,118)/),(/2,2,2/))
   v(2)%p2=reshape((/(m,m=113,120)/),(/2,2,2/))
  case (3)
   allocate(v(2)%p2(2,2,2))
   v(2)%p2=reshape((/(m,m=211,218)/),(/2,2,2/))
   v(2)%p1=>t2(:,2:4:2,:)
  case (4)
   v(2)%p1=>t1(:,1:3:2,:)
   v(2)%p2=>t2(:,2:4:2,:)
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
integer i1(8),i2(8)
 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (any(i1/=(/(m,m=11,18)/)))write(6,*) "NG"
   if (any(i2/=(/1,2,5,6,7,8,11,12/)))write(6,*) "NG"
   if (loc(i1)/=n1)write(22,*) i,'i1 copied'
   if (loc(i2)==n2)write(22,*) i,'i2 no copied'
 case (2)
   if (any(i1/=(/(m,m=111,118)/)))write(6,*) "NG"
   if (any(i2/=(/(m,m=113,120)/)))write(6,*) "NG"
   if (loc(i1)/=n1)write(22,*) i,'i1 copied'
   if (loc(i2)/=n2)write(22,*) i,'i2 copied'
 case (3)
   if (any(i1/=(/3,4,7,8,11,12,15,16/)))write(6,*) "NG"
   if (any(i2/=(/(m,m=211,218)/)))write(6,*) "NG"
   if (loc(i1)==n1)write(22,*) i,'i1 no copied'
   if (loc(i2)/=n2)write(22,*) i,'i2 copied'
 case (4)
   if (any(i1/=(/1,2,5,6,7,8,11,12/)))write(6,*) "NG"
   if (any(i2/=(/3,4,7,8,11,12,15,16/)))write(6,*) "NG"
   if (loc(i1)==n1)write(22,*) i,'i1 no copied'
   if (loc(i2)==n2)write(22,*) i,'i2 no copied'
end select
jfoo=i
end
