type ty
 integer::x1
end type
type ty2
 integer::x1
end type
k=0
do n=1,5
select type(b=>  ufun(n)   ) 
type is(ty2)
k=5
type  is (character(*))
if (len(b)/=3) print *,8001
if (b/='123') print *,8002
k=2
class default
k=1
type is(ty)
k=4
end select
select case(n) 
case (1)
if (k/=1) print *,10101
case (2)
if (k/=2) print *,10102
case (3)
if (k/=1) print *,10103
case (4)
if (k/=4) print *,10104
case (5)
if (k/=5) print *,10105
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
case (4)
allocate(ufun,source=ty(1))
case (5)
allocate(ufun,source=ty2(1))
end select
end function
end
