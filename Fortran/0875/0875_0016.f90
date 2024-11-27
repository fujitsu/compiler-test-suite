k=0
m=0
select type(b=>  ufun(n)   ) 
type  is (integer)
do kk=1,3
end do
select type(c=>  ufun(n)   ) 
type  is (integer)
do kk=1,3
end do
type is (real)                      
do kk=1,3
end do
class default
do kk=1,3
end do
m=1
end select
type is (real)                      
select type(c=>  ufun(n)   ) 
type  is (integer)
do kk=1,3
end do
type is (real)                      
do kk=1,3
end do
class default
do kk=1,3
end do
m=1
end select
do kk=1,3
end do
class default
select type(c=>  ufun(n)   ) 
type  is (integer)
do kk=1,3
end do
type is (real)                      
do kk=1,3
end do
class default
do kk=1,3
end do
m=1
end select
do kk=1,3
end do
k=1
end select
if (k/=1)print *,1001
if (m/=1)print *,10012
print *,'pass'
contains
function ufun(n)
class(*),pointer :: ufun
allocate(ufun,source=1_2)
end function
end
