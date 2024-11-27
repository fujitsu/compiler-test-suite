module m1
contains
subroutine sp1(p,j,i)
   integer::p(:,:,:,:)
j=jfoo(p(:,:,:,:),i)
end subroutine
subroutine sp2(p,j,i)
   integer::p(:,:,:,:)
j=jfoo(p,i)
end subroutine
subroutine sp3(p,j,i)
   integer::p(:,:,:,:)
j=jfoo(p(::1,::1,::1,::1),i)
end subroutine
subroutine sp4(p,j,i)
   integer::p(:,:,:,:)
k=1
j=jfoo(p(::k,::k,::k,::k),i)
end subroutine
subroutine sp5(p,j,i)
   integer::p(:,:,:,:)
k=1
j=jfoo(p(:,:,:,::k),i)
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:,:,:),p2(:,:,:,:),p3(:,:,:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3,3/))
 integer,target::t2(4,4,4,4)=reshape((/(i,i=1,64*4)/),(/4,4,4,4/))
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
select case (kk) 
case (1)
 j=jfoo(v(k)%p1(:,:,:,:),i)
case (2)
 call sp1(v(k)%p1,j,i)
case (3)
 call sp2(v(k)%p1,j,i)
case (4)
 call sp3(v(k)%p1,j,i)
case (5)
 call sp4(v(k)%p1,j,i)
case (6)
 call sp5(v(k)%p1,j,i)
case default
  write(6,*) "NG"
end select
if (j/=i)write(6,*) "NG"
if (any(v(2)%p1(:,:,:,:)/=0))write(6,*) "NG"
deallocate(v)
end
call s(2,2,1)
call s(2,2,2)
call s(2,2,3)
call s(2,2,4)
call s(2,2,5)
call s(2,2,6)
print *,'pass'
end
integer function jfoo(i1,i)
integer i1(27*2)
integer,parameter::r(27*2)=(/(i,i=1,27*2)/)

select case(i)
 case (2)
   if (any(i1/=r))write(6,*) "NG"
   i1=0
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

