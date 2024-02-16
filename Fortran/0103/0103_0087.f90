program calling_func
implicit none

 call get_val()

end program calling_func


subroutine get_val()

   implicit none

   integer,parameter::a=1
   integer,parameter::b=1
   integer,parameter:: val=maskr(a,b)
   if(val .ne. 1)print*,"100"
   print*,"PASS"
end subroutine get_val

