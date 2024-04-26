program calling_func
implicit none
   integer:: a
   integer:: get_val
   a = get_val()
   if(a .ne. bit_size(a))print*,"100"
   print*,"PASS"
end program calling_func

function get_val()
   implicit none
   integer,parameter::a=1234
   integer,parameter::b=2
   integer,parameter:: get_val1 = storage_size(a,b)
   integer:: get_val
   get_val=get_val1
end function get_val

