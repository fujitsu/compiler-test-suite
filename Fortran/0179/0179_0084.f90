subroutine sub1() 
 type r_type  
  integer,pointer::z 
 end type r_type 

 block 
  type(r_type),pointer ::r 
 end block 
 call bb
 contains
   subroutine bb
   end subroutine bb
 end

 print *,'pass'
 end
