program calling_func
implicit none
   integer:: a
   integer:: get_val
   a = get_val()
   if(a .ne. 0)print*,"100"
   print*,"PASS"
end program calling_func


function get_val()
   implicit none
   integer,parameter:: get_val1 = TRAILZ(4294967295_8)
   integer:: get_val
   get_val=get_val1
end function get_val
