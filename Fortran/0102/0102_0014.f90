program calling_func
implicit none
   logical :: a
   logical :: get_val
   a = get_val()
   if(a .neqv. .false.)print*,"100"
   print*,"PASS"
end program calling_func

function get_val()

   implicit none

   integer,parameter::a=0
   integer,parameter::b=-1
   logical,parameter :: get_val1 =  bge(a,b)
   logical :: get_val
   get_val = get_val1
end function get_val
