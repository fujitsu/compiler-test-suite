k=0
select type(b=>  ufun(n)   ) 
end select
if (k/=0) print *,1010
print *,'pass'
contains
function ufun(n)
class(*),pointer :: ufun
allocate(ufun,source=1_2)
end function
end
