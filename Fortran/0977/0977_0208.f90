subroutine s(i,k)
 type x
   integer,pointer::p1(:,:,:,:),p2(:,:,:,:),p3(:,:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3,3/))
 integer,target::t2(4,4,4,4)=reshape((/(i,i=1,64*4)/),(/4,4,4,4/))
 pointer(n1,d1)
 pointer(n2,d2)
 allocate(v(k))
 k1=1;k2=2
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3,3,2),v(2)%p2(3,3,3,2))
   allocate(v(2)%p3(3,3,3,2))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
   v(2)%p3=reshape((/(i,i=1,18*3)/),(/3,3,3,2/))
end select
n1=loc(v(2)%p1)
n2=loc(v(2)%p2)
j=jfoo(v(k)%p1(:,:,:,:),v(k)%p2(:,:,:,:),n1,n2,i)
if (j/=i)write(6,*) "NG"
if (any(v(2)%p1(:,:,:,:)/=0))write(6,*) "NG"
if (any(v(2)%p2(:,:,:,:)/=0))write(6,*) "NG"
deallocate(v)
end
call s(2,2)
print *,'pass'
end
integer function jfoo(i1,i2,n1,n2,i)
integer i1(27*2),i2(27*2)
integer,parameter::r(27*2)=(/(i,i=1,27*2)/)

 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (2)
   if (any(i1/=r))write(6,*) "NG"
   if (any(i2/=r))write(6,*) "NG"
   i1=0
   i2=0
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

