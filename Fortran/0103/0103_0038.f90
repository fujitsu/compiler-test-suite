program calling_func
implicit none
 call get_val()
end program calling_func

subroutine get_val()
   implicit none

   integer*4,parameter::a=5
   integer*4,parameter::b=6
   integer*4,parameter::c=31
   integer*4 :: val
   val = DSHIFTR(a,b,c)
   if(val .ne. 10)print*,"100"
   print*,"PASS"
end subroutine get_val
