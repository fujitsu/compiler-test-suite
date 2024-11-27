k=0
do n=1,2
select type(b=>  ufun(n)   ) 
type  is (character(*))
if (len(b)/=3) print *,8001
if (b/='123') print *,8002
k=1
end select
select case(n) 
case (1)
if (k/=0) print *,10101
case (2)
if (k/=1) print *,10102
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
