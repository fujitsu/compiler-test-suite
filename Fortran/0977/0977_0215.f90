module m1
contains
subroutine sp1(p,j,i)
   integer,pointer::p(:,:)
k=2
j=jfoo(p(k:,:),i)
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   integer,pointer::p1(:,:)
 end type
 type (x),pointer:: v(:)
 allocate(v(k))
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3))
   v(2)%p1=reshape((/(i,i=1,18*3)/),(/3,3/))
end select
select case (kk) 
case (1)
 call sp1(v(k)%p1,j,i)
case default
  write(6,*) "NG"
end select
if (j/=i)write(6,*) "NG"
if (any(v(2)%p1(2:,:)/=0))write(6,*) "NG"
deallocate(v)
end
call s(2,2,1)
print *,'pass'
end
integer function jfoo(i1,i)
integer i1(6)

select case(i)
case (2)
   if (any(i1/=(/2,3,5,6,8,9/)))print *,i1
   i1=0
case default
  write(6,*) "NG"
end select
jfoo=i
end
   

