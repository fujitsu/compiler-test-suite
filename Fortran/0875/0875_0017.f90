k=0
m=0
do n=1,2
select type(b=>  ufun(n)   ) 
type  is (integer)
do  kk=1,2
end do
k=1
select type(c=>  ufun(n)   ) 
class default
do  kk=1,2
end do
m=1
end select
end select
select case(n) 
case (1)
if (k/=0) print *,10101
if (m/=0) print *,101011
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
allocate(ufun,source=2)
end select
end function
end
