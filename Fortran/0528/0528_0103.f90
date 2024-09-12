logical,parameter::flag=1==1
type x1
  integer::a0(200)=2
  real(8),allocatable::a1(:)
  integer::a2(200)=3
end type
type y12
   class(* ),allocatable::b12
end type
class(y12),pointer:: c123
class (y12),allocatable:: d1234

allocate( d1234,c123)

allocate(x1:: c123%b12)
allocate(x1:: d1234%b12)


select type(z=>c123%b12)
type is(x1)
allocate( z       %a1(2))
end select
select type(z=>d1234%b12)
type is(x1)
allocate( z        %a1(2))
if (any(z%a0/=2)) print *,8001
if (any(z%a2/=3)) print *,8003
end select

if (flag) then
select type(z=>c123%b12)
type is(x1)
end select
select type(z=>d1234%b12)
type is(x1)
if (any(z%a0/=2)) print *,80011
if (any(z%a2/=3)) print *,80031
end select
end if

select type(z=>c123%b12)
type is(x1)
z       %a1(2)=1
if (z       %a1(2)/=1) print *,901
end select
select type(z=>d1234%b12)
type is(x1)
z        %a1(2)=1
if (z        %a1(2)/=1) print *,902
if (any(z%a0/=2)) print *,70011
if (any(z%a2/=3)) print *,70031
end select

print *,'pass'
end
