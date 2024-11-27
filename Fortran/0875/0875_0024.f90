type ty
 integer::x1
end type
do n=1,3
k=0
m=0
select type(b=>  ufun(n)   ) 
class default
k=2
type  is (character(*))
if (len(b)/=3) print *,8001
if (b/='123') print *,8002
k=1
select type(b=>  ufun(n)   ) 
class default
m=2
type  is (character(*))
if (len(b)/=3) print *,8001
if (b/='123') print *,8002
m=1
type is(ty)
end select
type is(ty)
end select
select case(n) 
case (1)
if (k/=2) print *,10101
if (m/=0) print *,101011
case (2)
if (k/=1) print *,10102
if (m/=1) print *,101021
case (3)
if (k/=2) print *,10103
if (m/=0) print *,101031,m
end select
end do
print *,'pass'
contains
function ufun(n)
class(*),pointer :: ufun
select case(n) 
case (1)
allocate(ufun,source=1_2)
case (2)
allocate(ufun,source='123')
case (3)
allocate(ufun,source=1)
end select
end function
end
