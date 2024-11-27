module m1
contains
subroutine sp1(p,j,i)
   integer,pointer::p(:,:)
j=jfoo(p(:,:),i)
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:)
 end type
 type (x),pointer:: v(:)
 integer,target::t1(3,3,3)=reshape((/(i,i=1,27*3)/),(/3,3,3/))
 allocate(v(k))
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3))
   v(2)%p1=>t1(2,:,:)
end select
select case (kk) 
case (2)
 call sp1(v(k)%p1,j,i)
case default
  write(6,*) "NG"
end select
if (j/=i)write(6,*) "NG"
deallocate(v)
end
call s(2,2,2)
print *,'pass'
end
integer function jfoo(i1,i)
integer i1(9)
integer,parameter::r(9)=(/2,5,8,11,14,17,20,23,26/)

select case(i)
case (2)
   if (any(i1/=r))print *,i1
   i1=0
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

