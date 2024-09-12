logical,parameter::flag=1==1
type x1
  class(*),allocatable::a1(:)
  integer:: a0(2000)=1
end type
type y12
   class(*),allocatable::b12
end type
Type (y12):: c123
Type (y12),allocatable:: d1234

allocate( d1234)

allocate( x1::c123%b12)
allocate( x1::d1234%b12)


k=0
select type(q=>c123%b12)
type is(x1)
allocate(real(8):: q%a1(2))
if (flag) then
select type (z=>q       %a1)
type is(real(8))
z          (2)=1
k=1
end select
if (k/=1)print *,8001
end if
k=0
select type (z=>q       %a1)
type is(real(8))
if (z          (2)/=1) print *,901
k=1
end select
if (k/=1)print *,8002
end select

select type (q=>d1234%b12)
type is(x1)
allocate(real(8):: q        %a1(2))
if (any(q%a0       /=1)) print *,90102
q%a0=2
if (flag) then
select type (z=>q        %a1)
type is(real(8))
z           (2)=11
if (any(q%a0       /=2)) print *,9010
end select
end if
select type (z=>q        %a1)
type is(real(8))
if (           z(2)/=11) print *,902
if (any(q%a0       /=2)) print *,q%a0
end select
end select



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
if (any(q%a0       /=2)) print *,90101
end select
end select

print *,'pass'
end
