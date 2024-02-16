program calling_func
implicit none
   integer :: a
   integer :: get_val
   a = get_val()
   if(a .ne. 1)print*,"100"
   print*,"PASS"
end program calling_func


function get_val()

   implicit none

   integer,parameter::a=1
   integer,parameter::b=1
   integer :: get_val
   integer,parameter::get_val1= maskr(a,b)
   get_val=get_val1
end function get_val

