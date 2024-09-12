logical,parameter::flag=1==0
type x1
  real(8),allocatable::a1(:)
end type
type y12
   class(* ),allocatable::b12
end type
Type (y12):: c123
Type (y12),allocatable:: d1234

allocate( d1234)

allocate(x1:: c123%b12)
allocate(x1:: d1234%b12)


select type(z=>c123%b12)
type is(x1)
allocate( z       %a1(2))
end select
select type(z=>d1234%b12)
type is(x1)
allocate( z        %a1(2))
end select

if (flag) then
select type(z=>c123%b12)
type is(x1)
print *,z       %a1(2)
end select
select type(z=>d1234%b12)
type is(x1)
print *,z        %a1(2)
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
end select

print *,'pass'
end
