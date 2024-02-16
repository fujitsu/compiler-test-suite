program calling_func
implicit none
 
 call get_val()

end program calling_func


subroutine get_val()

   implicit none 
   integer,parameter::a=5
   integer,parameter::b=6
   logical,parameter::val=bgt(a,b)
   if(val .neqv. .false.)print*,"100"
   print*,"PASS"
end subroutine get_val

