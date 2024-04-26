 interface
 function func(a,b) result( r )
  real :: a(10),b(:)
 end

 end interface

   real :: z(10)=(/1,2,3,4,5,6,7,8,9,10/)

   r = func (z(1),z(1:10:2))
   print *,'pass'
   end

   function func(a,b) result( r )
   real a(10)
   real b(:)

   a(1)=10
   b(1)=20
   a(2)=30
   r=a(1)
   end function
