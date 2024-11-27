k=0
select type(b=>  ufun(n)   ) 
type  is (integer)
do kk=1,3
end do
type is (real)                      
do kk=1,3
end do
class default
do kk=1,3
end do
k=1
end select
if (k/=1)print *,1001
print *,'pass'
contains
function ufun(n)
class(*),pointer :: ufun
allocate(ufun,source=1_2)
end function
end
