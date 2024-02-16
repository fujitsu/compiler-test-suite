program calling_func
implicit none
 call get_val()
end program calling_func

subroutine get_val()
implicit none
   integer,parameter::a=5
   integer,parameter::b=6
   integer,parameter::c=-4
   integer,parameter:: val=MERGE_BITS(a,b,c)
   if(val .ne. 6)print*,"100"
   print*,"PASS"
end subroutine get_val
