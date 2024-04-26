module m
contains
recursive function factorial(n,y,z) result (fact)
  integer :: fact
   integer,intent(in)::n
  integer :: y,z
entry ent(n,y,z) result (fact)
   z=y
   if(n==0) then
    fact=1
   else
    fact=n*factorial(n-1,y,z)
   end if
 end function
end

use m
integer :: i,x
x=10
do i=1,10
print *,ent(i,x,x)
end do
end
