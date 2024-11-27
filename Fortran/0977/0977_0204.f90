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
j=jfoo(v(k)%p1(:,:,:,:),v(k)%p2(::2,:,:,:),v(k)%p3(:,:,:,:),n1,n2,i)
if (j/=i)write(6,*) "NG"
if (any(v(2)%p1(:,:,:,:)/=0))write(6,*) "NG"
if (any(v(2)%p2(::2,:,:,:)/=0))write(6,*) "NG"
if (any(v(2)%p3(:,:,:,:)/=0))write(6,*) "NG"
deallocate(v)
end
call s(2,2)
print *,'pass'
end
integer function jfoo(i1,i2,i3,n1,n2,i)
integer i1(27*2),i2(36),i3(27*2)
integer,parameter::r(27*2)=(/(i,i=1,27*2)/)
integer,parameter::s(36)=(/1,3,4,6,7,9,10,12,13,15,16,18,19,21,22,24,25,27,28,30,31,33,34,36,37,39,40,42,43,45,46,48,49,51,52,54/)

 pointer(n1,d1)
 pointer(n2,d2)
select case(i)
 case (2)
   if (any(i1/=r))write(6,*) "NG"
   if (any(i2/=s))write(6,*) "NG"
   if (any(i3/=r))write(6,*) "NG"
   i1=0
   i2=0
   i3=0
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

