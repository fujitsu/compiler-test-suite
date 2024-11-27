module m1
contains
subroutine sp1(p1,p2,j,i)
   integer,pointer::p1(:,:)
   integer,allocatable::p2(:,:)
call jfoo(p1,p2,i)
j=0
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:)
   integer,allocatable::p2(:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 allocate(v(k))
 select case(i)
  case (2)
   allocate(v(2)%p2(3,3))
   v(2)%p2=reshape((/(i,i=1,18*3)/),(/3,3/))
   v(2)%p1=>t1(2,:,:)
end select
select case (kk) 
case (2)
 call sp1(v(k)%p1,v(k)%p2,j,i)
case default
  write(6,*) "NG"
end select
deallocate(v)
end
call s(2,2,2)
print *,'pass'
end
subroutine jfoo(i1,i2,i)
integer i1(6),i2(6)
integer,parameter::r(6)=(/2,5,8,11,14,17/)
integer,parameter::s(6)=(/1,2,3,4,5,6/)

select case(i)
case (2)
   if (any(i1/=r))print *,i1
   if (any(i2/=s))print *,i2
   i1=0
case default
  write(6,*) "NG"
end select
end
   

