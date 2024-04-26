program calling_func
implicit none

 call get_val()

end program calling_func


subroutine get_val()
   implicit none
   integer,parameter :: val=poppar(9223372036854775806_8)
   if(val .ne. 0)print*,"100"
   print*,"PASS"
end subroutine get_val

