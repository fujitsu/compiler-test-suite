k=0
m=0
do n=1,2
select type(b=>  ufun(n)   ) 
type  is (character(*))
if (len(b)/=3) print *,8001
if (b/='123') print *,8002
k=1
select type(c=>  ufun(n)   ) 
type  is (character(*))
if (len(c)/=3) print *,9001
if (c/='123') print *,9902
m=1
end select
end select
select case(n) 
case (1)
if (k/=0) print *,10101
if (m/=0) print *,101011
case (2)
if (m/=1) print *,10102
if (k/=1) print *,101021
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
end select
end function
end
