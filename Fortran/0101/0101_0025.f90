program calling_func
implicit none
 call get_val()
end program calling_func

subroutine get_val()
implicit none
   logical,parameter::a(5)=[.true.,.true.,.false.,.false.,.true.]
   logical,parameter::constvar=PARITY(mask=a)
   if(constvar .neqv. .true.)print*,"100"
   print*,"PASS"
end subroutine get_val
