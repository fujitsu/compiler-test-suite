program calling_func
implicit none
   integer :: a
   integer :: get_val
   a = get_val()
   if(a .ne. 10)print*,"100"
   print*,"PASS"
end program calling_func


function get_val()
   implicit none

   integer*1,parameter::a=5
   integer*1,parameter::b=6
   integer*1,parameter::c=7
   integer :: get_val
   get_val = DSHIFTR(a,b,c)
end function get_val
