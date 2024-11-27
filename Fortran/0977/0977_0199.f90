subroutine s(i,k)
 type x
   integer,pointer::p1(:,:,:,:),p2(:,:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3,3/))
 integer,target::t2(4,4,4,4)=reshape((/(i,i=1,64*4)/),(/4,4,4,4/))
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 k1=1;k2=2
 select case(i)
  case (1)
   allocate(v(2)%p1(3,3,3,2))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p2=>t1(:,:,:,1:3:2)
  case (2)
   allocate(v(2)%p1(3,3,3,2),v(2)%p2(3,3,3,2))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
  case (3)
   allocate(v(2)%p2(3,3,3,2))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p1=>t2(:,:,:,2:4:2)
  case (4)
   v(2)%p1=>t1(:,:,:,1:3:2)
   v(2)%p2=>t2(:,:,:,2:4:2)
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1(k1:,:,:,:),v(k)%p2(:,k1:,:,:),n1,n2,i)+jfoo(v(k)%p1(:,:,k1:,:),v(k)%p2(:,:,:,k1:k2),n1,n2,i)
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
integer i1(18*3),i2(18*3)
integer,parameter::r(18*3)=(/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81/)
integer,parameter::s(18*3)=(/65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118/)

 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (1)
   if (any(i1/=(/(i,i=1,18*3)/)))write(6,*) "NG"
   if (any(i2/=r             ))write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)==n2)write(1,*) i,'i2 no copied'
 case (2)
   if (any(i1/=(/(i,i=1,18*3)/)))write(6,*) "NG"
   if (any(i2/=(/(i,i=1,18*3)/)))write(6,*) "NG"
   if (loc(i1)/=n1)write(1,*) i,'i1 copied'
   if (loc(i2)/=n2)write(1,*) i,'i2 copied'
 case (3)
   if (any(i1/=s             ))write(6,*) "NG"
   if (any(i2/=(/(i,i=1,18*3)/)))write(6,*) "NG"
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
   

