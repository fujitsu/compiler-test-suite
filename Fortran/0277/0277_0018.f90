program calling_func
implicit none

 call get_val()

end program calling_func

subroutine get_val()

   implicit none

   integer*4,parameter::a=1000007_8
   integer*4,parameter::b=4_8
   integer*8,parameter::val = SHIFTL(a,b)
   if(val .ne. 16000112_8)print*,"100"
   print*,"PASS"
end subroutine get_val
