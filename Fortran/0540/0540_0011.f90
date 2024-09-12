module mod01         
   type:: ytype       
   contains
      procedure :: wait
   end type ytype
contains
   subroutine wait(this)  
     class (ytype), intent(inout) :: this
   end subroutine
end module 

module mod02      
   interface        
      subroutine sub(x)
         use mod01   
         type  (ytype):: x
      end subroutine
   end interface
end module 

program main          
   use mod01,only:w=>ytype 
   use mod02           
      type (w) :: var
        call var%wait() 

print *,'pass'
   end