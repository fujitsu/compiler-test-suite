module m1
contains
subroutine sp1(p1,p2,p3,p4,p5,p6,j,i)
   integer,pointer::p1(:,:)
   integer,pointer::p2(:,:)
   integer,pointer::p4(:,:)
   integer,pointer::p5(:,:)
   integer,pointer::p6(:,:)
   integer,allocatable::p3(:,:)
call jfoo(p1,p2,p3,p4,p5,p6,i)
j=0
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:)
   integer,pointer::p2(:,:)
   integer,allocatable::p3(:,:)
   integer,pointer::p4(:,:)
   integer,pointer::p5(:,:)
   integer,pointer::p6(:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t2(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t3(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t4(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 integer,target::t5(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 allocate(v(k))
 select case(i)
  case (2)
   v(2)%p1=>t1(2,:,:)
   v(2)%p2=>t5(2,:,:)
   allocate(v(2)%p3(3,3))
   v(2)%p3=reshape((/(i,i=1,18*3)/),(/3,3/))
   v(2)%p4=>t2(2,:,:)
   v(2)%p5=>t3(2,:,:)
   v(2)%p6=>t4(2,:,:)
end select
select case (kk) 
case (2)
 call sp1(v(k)%p1,v(k)%p2,v(k)%p3,v(k)%p4,v(k)%p5,v(k)%p6,j,i)
case default
  write(6,*) "NG"
end select
deallocate(v)
end
call s(2,2,2)
print *,'pass'
end
subroutine jfoo(i1,i2,i3,i4,i5,i6,i)
integer i1(6),i2(6),i3(6)
integer i4(6),i5(6),i6(6)
integer,parameter::r(6)=(/2,5,8,11,14,17/)
integer,parameter::s(6)=(/1,2,3,4,5,6/)

select case(i)
case (2)
   if (any(i1/=r))print *,i1
   if (any(i2/=r))print *,i2
   if (any(i3/=s))print *,i3
   if (any(i4/=r))print *,i4
   if (any(i5/=r))print *,i5
   if (any(i6/=r))print *,i6
   i1=0
case default
  write(6,*) "NG"
end select
end
   

