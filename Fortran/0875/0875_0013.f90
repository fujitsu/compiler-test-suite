type x
 integer::x1
end type
k=0
m=0
do n=1,2
select type(b=>  ufun(n)   ) 
type  is (x)
k=1
if (b%x1/=1) print *,101023
do kk=1,2
end do
select type(c=>  ufun(n)   ) 
type  is (x)
m=1
if (c%x1/=1) print *,101024
do kk=1,2
end do
end select
end select



select case(n) 
case (1)
if (k/=0) print *,10101
if (m/=0) print *,10101
case (2)
if (k/=1) print *,10102
if (m/=1) print *,10102
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
allocate(ufun,source=x(1))
end select
end function
end