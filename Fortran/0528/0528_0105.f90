logical,parameter::flag=1==1
type x1
  integer::a0(200)=2
  class(*),pointer    ::a1(:)
  integer::a2(200)=3
end type
type y12
   class(*),allocatable::b12
end type
class(y12),pointer:: c123
class(y12),allocatable:: d1234

allocate( d1234,c123)

allocate( x1::c123%b12)
allocate( x1::d1234%b12)


select type(q=>c123%b12)
type is(x1)
allocate(real(8):: q%a1(2))
if (flag) then
select type (z=>q       %a1)
type is(real(8))
if (any(q%a0/=2)) print *,6001
if (any(q%a2/=3)) print *,6003
end select
end if
select type (z=>q       %a1)
type is(real(8))
z          (2)=1
if (z          (2)/=1) print *,901
if (any(q%a0/=2)) print *,6004
if (any(q%a2/=3)) print *,6005
end select
end select

select type (q=>d1234%b12)
type is(x1)
allocate(real(8):: q        %a1(2))
if (flag) then
select type (z=>q        %a1)
type is(real(8))
if (any(q%a0/=2)) print *,6104
if (any(q%a2/=3)) print *,6105
end select
end if
select type (z=>q        %a1)
type is(real(8))
z           (2)=1
if (z           (2)/=1) print *,902
if (any(q%a0/=2)) print *,6204
if (any(q%a2/=3)) print *,6205
end select
end select



select type(q=>c123%b12)
type is(x1)
select type (z=>q       %a1)
type is(real(8))
if (any(q%a0/=2)) print *,6214
if (any(q%a2/=3)) print *,6215
end select
end select
select type (q=>d1234%b12)
type is(x1)
select type (z=>q        %a1)
type is(real(8))
if (any(q%a0/=2)) print *,6224
if (any(q%a2/=3)) print *,6225
end select
end select

print *,'pass'
end
