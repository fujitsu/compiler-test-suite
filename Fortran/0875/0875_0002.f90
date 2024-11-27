k=0
select type(b=>  ufun(n)   ) 
type  is (integer)
type is (real)                      
class default
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
