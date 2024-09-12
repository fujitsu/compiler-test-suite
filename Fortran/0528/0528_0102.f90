logical,parameter::flag=1==1
type x1
  integer  ::a0(200)=2
  class(*),pointer    ::a1(:)
  integer  ::a2(200)=3
end type
type y12
   class(*),allocatable::b12
end type
Type (y12):: c123
Type (y12),allocatable:: d1234

allocate( d1234)

allocate( x1::c123%b12)
allocate( x1::d1234%b12)


select type(q=>c123%b12)
type is(x1)
allocate(real(8):: q%a1(2))
if (flag) then
select type (z=>q       %a1)
type is(real(8))
end select
end if
select type (z=>q       %a1)
type is(real(8))
z          (2)=1
if (z          (2)/=1) print *,901
if (any(q%a0/=2)) print *,7001
if (any(q%a2/=3)) print *,7003
end select
end select

select type (q=>d1234%b12)
type is(x1)
allocate(real(8):: q        %a1(2))
if (flag) then
select type (z=>q        %a1)
type is(real(8))
end select
end if
select type (z=>q        %a1)
type is(real(8))
         z  (2)=1
if (z           (2)/=1) print *,902
if (any(q%a0/=2)) print *,70011
if (any(q%a2/=3)) print *,70031
end select
end select


k=0
select type(q=>c123%b12)
type is(x1)
select type (z=>q       %a1)
type is(real(8))
end select
end select
select type (q=>d1234%b12)
type is(x1)
select type (z=>q        %a1)
type is(real(8))
if (any(q%a0/=2)) print *,70011
if (any(q%a2/=3)) print *,70031
k=1
end select
end select
if (k/=1) print *,7007

print *,'pass'
end
