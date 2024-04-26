integer :: i,x
x=10
do i=1,10
print *,factorial(i,x,x)
end do
if (factorial(10,x,x)==3628800) then
  print *,'pass'
else
  print *,'ng'
end if
contains
recursive function factorial(n,y,z) result (fact)
  integer :: fact
   integer,intent(in)::n
  integer :: y,z
   if(n==0) then
    fact=1
   else
    fact=n*factorial(n-1,y,z)
   end if
 end function
end
