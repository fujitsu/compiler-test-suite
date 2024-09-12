module m1
 type b
   integer::b1
 end type
 type,extends(b)::e
   integer::e1
 end type
contains
function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 1) print*,'201'

 fun=0

select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='a'
  fun=1
end select  
end function
function fun2(dmy) result(r)
 class(b),pointer    ::r(:)
 class(*):: dmy
 if(sizeof(dmy) /= 1) print*,'3201'

allocate(r(3:4))
if (lbound(r,1)/=3)print *,3202

select type(dmy)
 type is(integer)
  print*,'3203'
 type is(character(*))
  dmy='c'
  select type (r)
    type is(e)
       print *,3204
    type is(b)
      do k=lbound(r,1),ubound(r,1)
       r(k)%b1=k
      end do
  end select
      do k=lbound(r,1),ubound(r,1)
       if (r(k)%b1/=k) print *,3205
      end do
end select  

end function
end
subroutine s1
use m1
class(*),allocatable :: unlim
character(:),allocatable :: ch
integer :: stat = 0
class(b),pointer::p(:)

ch='x'

if (allocated(unlim)) print *,2001

allocate(unlim,source = ch,stat=k)
if (k/=0) print *,2002
stat = fun(unlim)

select type(unlim)
type is(character(*))
if(stat/=1 .or. unlim /='a') then
 print*,101
else
endif
end select
p => fun2(unlim)
n=0
select type (p)
type is(e)
  print *,501
type is (b)
      do k=lbound(p,1),ubound(p,1)
       if (p(k)%b1/=k) print *,3205
      end do
      n=10
end select
if (n/=10) print *,3305
end
call s1
 print*,'pass'
end
