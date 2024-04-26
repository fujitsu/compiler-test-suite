program calling_func
implicit none

 call get_val()

end program calling_func

subroutine get_val()

   implicit none

   integer*4,parameter::a=1000007_8
   integer*4,parameter::b=1000066_8
   logical,parameter::val = bge(a,b)
   if(val .neqv. .false.)print*,"100"
   print*,"PASS"
end subroutine get_val
