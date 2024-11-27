k=0
select type(b=>  ufun(n)   ) 
type  is (integer)
k=1
type is (real)                      
k=1
end select
if (k/=0) print *,1010
print *,'pass'
contains
function ufun(n)
class(*),pointer :: ufun
allocate(ufun,source=1_2)
end function
end
