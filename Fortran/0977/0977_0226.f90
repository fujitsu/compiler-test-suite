module m1
contains
subroutine sp1(p,j,i)
   character(*),pointer::p(:,:)
character(*) j
character(2) jfoo
k=2
j=jfoo(p(:,:)(k:),i)
end subroutine
end

subroutine s(i,k,kk)
use m1
 type x
   character(2),pointer::p1(:,:)
 end type
 type (x),pointer:: v(:)
 character(2) j
 allocate(v(k))
 select case(i)
  case (2)
   allocate(v(2)%p1(3,3))
   v(2)%p1=reshape((/(char(i)//char(i+1),i=1,18*3)/),(/3,3/))
end select
select case (kk) 
case (2)
 call sp1(v(k)%p1,j,i)
case default
  write(6,*) "NG"
end select
if (j/=char(i)//char(i+1))write(6,*) "NG"
if (any(v(2)%p1(:,:)(2:2)/='0'))write(6,*) "NG"
deallocate(v)
end
call s(2,2,2)
print *,'pass'
end
character(*) function jfoo(i1,i)
character(*) i1(9)
character(*),parameter::r(9)=(/(char(i)//char(i+1),i=1,9)/)

select case(i)
case (2)
   if (any(i1/=r(:)(2:2)))write(6,*) "NG"
   i1='0'
case default
  write(6,*) "NG"
end select
jfoo=char(i)//char(i+1)
end
   

