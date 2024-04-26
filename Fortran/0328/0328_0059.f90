integer :: i,x
x=10
do i=1,10
print *,factorial(i,x,x)
end do
print *,'x= ',x
print *,'pass'
contains
recursive function factorial(n,y,z) result (fact)
  integer :: fact
   integer,intent(in)::n
  integer :: y,z
   z=y
   if(n==0) then
    fact=1
   else
    fact=n*factorial(n-1,y,z)
   end if
 end function
end
